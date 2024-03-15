import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SystemUiService {
  static bool _isSystemUiHidden = false;

  static void hideSystemUI() {
    if (_isSystemUiHidden) return;
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
      overlays: [SystemUiOverlay.top],
    );
    _isSystemUiHidden = true;
  }

  static void initDefaultSystemUI() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
      overlays: [SystemUiOverlay.top],
    );
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
      ),
    );

    // _changeThemeMode(settingsCubit.state.themeMode);

    // settingsCubit.stream.listen((state) {
    //   _changeThemeMode(state.themeMode);
    // });
  }

  static void showSystemUI() {
    if (!_isSystemUiHidden) return;
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
      overlays: [SystemUiOverlay.top],
    );
    _isSystemUiHidden = false;
  }

  static void toggleSystemUI() {
    if (_isSystemUiHidden) {
      showSystemUI();
    } else {
      hideSystemUI();
    }
  }

  // static void _changeThemeMode(ThemeMode themeMode) {
  //   if (themeMode == ThemeMode.dark) {
  //     SystemChrome.setSystemUIOverlayStyle(
  //       SystemUiOverlayStyle.dark,
  //     );
  //   } else {
  //     SystemChrome.setSystemUIOverlayStyle(
  //       SystemUiOverlayStyle.light,
  //     );
  //   }
  // }
}
