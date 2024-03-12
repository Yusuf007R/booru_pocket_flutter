import 'package:BooruPocket/constants/constants.dart';
import 'package:BooruPocket/services/locator_service.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import 'context_service.dart';

class AlertService {
  void showSnackBar({
    required String text,
    SnackbarType type = SnackbarType.info,
    Icon? customIcon,
  }) {
    BuildContext? context = locator<ContextService>().context;
    if (context == null) return;

    final flushBar = Flushbar(
      icon: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: customIcon ?? _getIcon(type),
      ),
      duration: const Duration(seconds: 3),
      animationDuration: const Duration(milliseconds: 500),
      flushbarStyle: FlushbarStyle.FLOATING,
      flushbarPosition: FlushbarPosition.TOP,
      borderRadius: BorderRadius.circular(8),
      margin: const EdgeInsets.only(left: 15, right: 15, top: navbarHeight),
      backgroundColor: Colors.white,
      onTap: (bar) => bar.dismiss(),
      boxShadows: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 10,
          blurRadius: 15,
          offset: const Offset(0, 5),
        ),
      ],
      messageText: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 15.5,
          fontWeight: FontWeight.w400,
        ),
      ),
    );

    flushBar.show(context);
  }

  Icon? _getIcon(SnackbarType type) {
    switch (type) {
      case SnackbarType.info:
        return const Icon(Icons.info_outline_rounded, color: Colors.blue);
      case SnackbarType.success:
        return Icon(Icons.done_outlined, color: Colors.green.shade400);
      case SnackbarType.download:
        return Icon(Icons.download, color: Colors.green.shade400);
      case SnackbarType.error:
        return const Icon(Icons.error_outline_outlined, color: Colors.red);
      default:
        return null;
    }
  }
}

enum SnackbarType {
  info,
  success,
  download,
  error,
}
