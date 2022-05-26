import 'package:booru_pocket_flutter/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Shimmer getShimmer(double height, double width) {
  return Shimmer(
    gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: <Color>[
        baseColor,
        baseColor,
        highlightColor,
        baseColor,
        baseColor
      ],
      stops: const <double>[
        0.0,
        0.35,
        0.5,
        0.65,
        1.0,
      ],
    ),
    child: Container(
      height: height,
      width: width,
      color: Colors.black,
    ),
  );
}
