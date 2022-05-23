import 'package:booru_pocket_flutter/models/api/post/post.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';
part 'settings_cubit.g.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(const SettingsState());

  void setThemeMode(ThemeMode mode) {
    emit(state.copyWith(themeMode: mode));
  }

  void setDefaultPath(String? path) =>
      emit(state.copyWith(defaultDownloadPath: path));

  Future<String?> openDefaultPathSelector() async {
    final selectedDirectory = await FilePicker.platform.getDirectoryPath();
    if (selectedDirectory == null) return null;
    setDefaultPath(selectedDirectory);
    return selectedDirectory;
  }

  void setGridImageQuality(ImageQuality quality) => emit(
        state.copyWith(gridImageQuality: quality),
      );

  void setDownloadQuality(ImageQuality quality) => emit(
        state.copyWith(downloadQuality: quality),
      );

  void setDetailPageQuality(ImageQuality quality) =>
      emit(state.copyWith(detailPageQuality: quality));

  void toggleGridRoundedCorners() =>
      emit(state.copyWith(gridRoundedCorners: !state.gridRoundedCorners));

  void setRating(PostRating rating) => emit(state.copyWith(rating: rating));

  void setGridType(GridType type) => emit(state.copyWith(gridType: type));

  void setGridColumns(int columns) =>
      emit(state.copyWith(gridColumns: columns));

  void setPageLimit(int pageLimit) =>
      emit(state.copyWith(pageLimit: pageLimit));

  @override
  SettingsState fromJson(Map<String, dynamic> json) =>
      SettingsState.fromJson(json);

  @override
  Map<String, dynamic> toJson(SettingsState state) => state.toJson();

  @override
  void onChange(Change<SettingsState> change) {
    super.onChange(change);
  }
}
