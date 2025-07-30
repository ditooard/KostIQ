import 'package:flutter/material.dart';

class AppShadows {
  static const List<BoxShadow> light = [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 8,
      offset: Offset(0, 4),
    ),
  ];

  static const List<BoxShadow> dark = [
    BoxShadow(
      color: Colors.black45,
      blurRadius: 8,
      offset: Offset(0, 4),
    ),
  ];
}
