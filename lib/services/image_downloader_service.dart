import 'dart:io';
import 'dart:typed_data';

import 'package:BooruPocket/blocs/settings_cubit/settings_cubit.dart';
import 'package:BooruPocket/models/api/post/post.dart';
import 'package:BooruPocket/services/alert_service.dart';
import 'package:BooruPocket/services/app_context_service.dart';
import 'package:BooruPocket/services/locator_service.dart';
import 'package:BooruPocket/services/notification_service.dart';
import 'package:BooruPocket/utils/sentry_utils.dart';
import 'package:dio/dio.dart';
import 'package:extended_image/extended_image.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class ImageDownloaderService {
  AlertService snackBarService = locator<AlertService>();

  Future<List<File?>> downloadImages(List<Post> posts) async {
    SettingsCubit? settingsCubit = locator<AppContextService>().settingsCubit;
    if (settingsCubit == null) return [null];
    try {
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
      snackBarService.showSnackBar(
        text: posts.length > 1
            ? 'Downloading ${posts.length} images.'
            : 'Download Started.',
        type: SnackbarType.download,
      );
      for (var post in posts) {
        final file = File('$path/post-${post.id}.${post.fileExt}');
        final notifyService = locator<NotificationService>();
        try {
          notifyService.showProgressDownloadNotify(post.id);
          final bytes = await getImageData(post.getImage(ImageQuality.max));
          if (bytes == null) {
            files.add(null);
            continue;
          }

          await file.writeAsBytes(bytes);
          notifyService.showDownloadCompletedNotify(
            post.id,
            post.getImage(ImageQuality.low),
          );
          files.add(file);
          continue;
        } catch (error, stacktrace) {
          reportException(
            "Error while downloading image",
            error,
            stackTrace: stacktrace,
            extras: {
              "url": post.getImage(ImageQuality.max),
              "postId": post.id.toString(),
            },
          );
          files.add(null);
          continue;
        }
      }
      return files;
    } catch (error, stacktrace) {
      reportException(
        'Error while requesting permission',
        error,
        stackTrace: stacktrace,
      );
      return [null];
    }
  }

  Future<bool> downloadShareImage(List<Post> posts, {String? text}) async {
    final files = await getImagesToTemp(posts);
    await Share.shareXFiles(
      files.map((e) => XFile(e.path)).toList(),
      text: text ?? (posts.length == 1 ? 'Post: ${posts[0].id}' : ''),
    );
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
    } catch (error, stacktrace) {
      reportException(
        "Error while getting image data",
        error,
        stackTrace: stacktrace,
        extras: {"url": url},
      );
      return null;
    }
  }

  Future<List<File>> getImagesToTemp(List<Post> posts) async {
    final files = await Future.wait(
      posts.map((post) async {
        final tempDir = await getTemporaryDirectory();
        final file = File('${tempDir.path}/${post.id}-temp.jpg');
        final image = await getImageData(post.getImage(ImageQuality.max));
        if (image == null) return null;
        await file.writeAsBytes(image);

        return file;
      }),
    );

    return files.whereType<File>().toList();
  }
}
