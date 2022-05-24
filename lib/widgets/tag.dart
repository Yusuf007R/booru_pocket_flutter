import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  const Tag(
      {Key? key,
      this.onLongPress,
      this.onPressed,
      required this.value,
      this.color})
      : super(key: key);

  final void Function()? onLongPress;
  final void Function()? onPressed;
  final String value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: SizedBox(
        height: 28,
        child: ElevatedButton(
          onLongPress: onLongPress,
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(1, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            primary: color ?? Theme.of(context).primaryColor,
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
