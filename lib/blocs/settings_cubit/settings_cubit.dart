import 'dart:io';

import 'package:BooruPocket/models/api/post/post.dart';
import 'package:BooruPocket/services/context_service.dart';
import 'package:BooruPocket/services/locator_service.dart';
import 'package:filesystem_picker/filesystem_picker.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'settings_cubit.freezed.dart';
part 'settings_cubit.g.dart';
part 'settings_state.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(const SettingsState());
  @override
  SettingsState fromJson(Map<String, dynamic> json) =>
      SettingsState.fromJson(json);

  Future<String?> openDefaultPathSelector() async {
    final context = locator<ContextService>().context;
    if (!(context != null)) return null;
    final rootPath = Directory('/storage/emulated/0/Pictures');
    String? selectedDirectory = await FilesystemPicker.open(
      title: 'Select folder to save posts',
      context: context,
      rootDirectory: rootPath,
      fsType: FilesystemType.folder,
      pickText: 'Select this folder',
      requestPermission: () async => true,
      contextActions: [
        FilesystemPickerNewFolderContextAction(),
      ],
    );
    if (selectedDirectory == null) return null;
    setDefaultPath(selectedDirectory);
    return selectedDirectory;
  }

  void setDefaultPath(String? path) =>
      emit(state.copyWith(defaultDownloadPath: path));

  void setDetailPageQuality(ImageQuality quality) =>
      emit(state.copyWith(detailPageQuality: quality));

  void setDownloadQuality(ImageQuality quality) => emit(
        state.copyWith(downloadQuality: quality),
      );

  void setGridColumns(int columns) =>
      emit(state.copyWith(gridColumns: columns));

  void setGridImageQuality(ImageQuality quality) => emit(
        state.copyWith(gridImageQuality: quality),
      );

  void setGridType(GridType type) => emit(state.copyWith(gridType: type));

  void setPageLimit(int pageLimit) =>
      emit(state.copyWith(pageLimit: pageLimit));

  void setRating(PostRating rating) => emit(state.copyWith(rating: rating));

  void setThemeMode(ThemeMode mode) {
    emit(state.copyWith(themeMode: mode));
  }

  void toggleGridRoundedCorners() =>
      emit(state.copyWith(gridRoundedCorners: !state.gridRoundedCorners));

  @override
  Map<String, dynamic> toJson(SettingsState state) => state.toJson();
}
