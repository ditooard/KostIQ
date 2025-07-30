import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle heading1(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge!;
  }

  static TextStyle bodyText(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge!;
  }

  static TextStyle caption(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall!;
  }
}
