import 'package:flutter/material.dart';

PopupMenuItem<T> popUpItem<T>({
  IconData? icon,
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
    padding: padding ?? const EdgeInsets.only(left: 15),
    child: Row(children: [
      if (icon != null) Icon(icon),
      SizedBox(width: iconSeparation ?? 8),
      Text(text ?? ''),
    ]),
  );
}
