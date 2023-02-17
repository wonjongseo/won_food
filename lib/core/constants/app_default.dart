import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDefault {
  static const double radius = 6;
  static const double margin = 16;
  static const double padding = 16;

  static BorderRadius borderRadius = BorderRadius.circular(radius);

  static BorderRadius bottomSheetRadius = const BorderRadius.only(
    topLeft: Radius.circular(radius),
    topRight: Radius.circular(radius),
  );

  static BorderRadius topSheetRadius = const BorderRadius.only(
    bottomLeft: Radius.circular(radius),
    bottomRight: Radius.circular(radius),
  );

  static List<BoxShadow> boxShadow = [
    BoxShadow(
        blurRadius: 10,
        spreadRadius: 0,
        offset: const Offset(0, 2),
        color: Colors.black.withOpacity(0.04))
  ];

  static Duration duration = const Duration(microseconds: 300);

  static double aspectRatio = 16 / 10;
}
