import 'dart:io';
import 'dart:typed_data';

import 'package:booru_pocket_flutter/blocs/settings_cubit/settings_cubit.dart';
import 'package:booru_pocket_flutter/models/api/post/post.dart';
import 'package:booru_pocket_flutter/services/context_service.dart';
import 'package:booru_pocket_flutter/services/locator_service.dart';
import 'package:booru_pocket_flutter/services/notification_service.dart';
import 'package:dio/dio.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';

class ImageDownloaderService {
  BuildContext context = locator<ContextService>().context;
  late SettingsCubit settingsCubit = context.read<SettingsCubit>();

  Future<bool> requestPermission() async {
    final permission = await Permission.storage.status;
    switch (permission) {
      case PermissionStatus.granted:
        return true;
      case PermissionStatus.limited:
        return true;
      default:
        final status = await Permission.storage.request();
        return status == PermissionStatus.granted ||
                status == PermissionStatus.granted
            ? true
            : false;
    }
  }

  Future<List<File>> getImagesToTemp(List<Post> posts) async {
    final files = await Future.wait(posts.map((post) async {
      final tempDir = await getTemporaryDirectory();
      final file = File('${tempDir.path}/${post.id}-temp.jpg');
      final image = await getImageData(post.highQuality);
      if (image == null) return null;
      await file.writeAsBytes(image);

      return file;
    }));

    return files.whereType<File>().toList();
  }

  Future<bool> downloadShareImage(List<Post> posts, {String? text}) async {
    final files = await getImagesToTemp(posts);
    await Share.shareFiles(files.map((e) => e.path).toList(),
        text: text ?? (posts.length == 1 ? 'Post: ${posts[0].id}' : ''));
    for (var element in files) {
      await element.delete(recursive: true);
    }
    return true;
  }

  Future<Uint8List?> getImageData(String url) async {
    final image = await getNetworkImageData(url);
    if (image != null) return image;
    try {
      final response = await Dio()
          .get(url, options: Options(responseType: ResponseType.bytes));
      return response.data;
    } catch (e) {
      return null;
    }
  }

  Future<List<File?>> downloadImages(List<Post> posts) async {
    final status = await requestPermission();
    if (!status) return [null];
    String path;
    final settingsPath = settingsCubit.state.defaultDownloadPath;
    if (settingsPath != null) {
      path = settingsPath;
    } else {
      final tempPath = await settingsCubit.openDefaultPathSelector();
      if (tempPath != null) {
        path = tempPath;
      } else {
        return [null];
      }
    }
    List<File?> files = [];
    Fluttertoast.showToast(
      msg: "Download started",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      textColor: Colors.white,
      fontSize: 16.0,
    );
    for (var post in posts) {
      final file = File('$path/post-${post.id}.${post.fileExt}');
      final notifyService = locator<NotificationService>();
      try {
        notifyService.showProgressDownloadNotify(post.id);
        final bytes = await getImageData(post.maxQuality);
        if (bytes == null) {
          files.add(null);
          continue;
        }
        await file.writeAsBytes(bytes);
        notifyService.showDownloadCompletedNotify(post.id, post.highQuality);
        files.add(file);
        continue;
      } catch (e) {
        files.add(null);
        continue;
      }
    }
    return files;
  }
}
