import 'package:flutter/material.dart';

PopupMenuItem<T> popUpItem<T>({
  IconData? icon,
  Color? iconColor,
  String? text,
  T? value,
  Function()? onTap,
  EdgeInsets? padding,
  double? iconSeparation,
}) {
  return PopupMenuItem<T>(
    onTap: onTap,
    height: 45,
    value: value ?? text?.toLowerCase() as T,
    padding: padding ?? const EdgeInsets.symmetric(horizontal: 15),
    child: Builder(builder: (context) {
      return Row(children: [
        if (icon != null)
          Icon(icon, color: iconColor ?? Theme.of(context).iconTheme.color),
        SizedBox(width: iconSeparation ?? 8),
        Text(text ?? ''),
      ]);
    }),
  );
}
