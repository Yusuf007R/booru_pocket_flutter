import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ThemeCubitCubit extends Cubit<ThemeMode> {
  ThemeCubitCubit() : super(ThemeMode.system);
  final storage = const FlutterSecureStorage();

  void setThemeMode(ThemeMode mode) => emit(mode);

  void setLightTheme() => emit(ThemeMode.light);

  void setDarkTheme() => emit(ThemeMode.dark);

  void setSystemTheme() => emit(ThemeMode.system);

  void loadTheme() async {
    final theme = await storage.read(key: 'themeMode');
    if (theme == null) return;
    if (theme == 'light') {
      emit(ThemeMode.light);
    } else if (theme == 'dark') {
      emit(ThemeMode.dark);
    } else {
      emit(ThemeMode.system);
    }
  }

  @override
  void onChange(Change<ThemeMode> change) async {
    super.onChange(change);
    await storage.write(
      key: 'themeMode',
      value: change.currentState.toString(),
    );
  }
}
