import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  const Tag({
    super.key,
    this.onLongPress,
    this.onPressed,
    required this.value,
    this.color,
    this.padding,
    this.disabled = false,
  });

  final void Function()? onLongPress;
  final void Function()? onPressed;
  final String value;
  final Color? color;
  final EdgeInsets? padding;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      child: IgnorePointer(
        ignoring: disabled,
        child: ElevatedButton(
          onLongPress: onLongPress,
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: padding,
            backgroundColor: color ?? Theme.of(context).colorScheme.primary,
            minimumSize: const Size(1, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            value,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
