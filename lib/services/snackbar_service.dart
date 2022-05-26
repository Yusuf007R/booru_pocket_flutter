import 'package:booru_pocket_flutter/services/locator_service.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'context_service.dart';

class SnackBarService {
  BuildContext context = locator<ContextService>().context;

  void showSnackBar({required String text}) {
    final mediaQuery = MediaQuery.of(context);
    print(MediaQueryData.fromWindow(ui.window).padding);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        behavior: SnackBarBehavior.floating,
       
      ),
    );
  }
}
