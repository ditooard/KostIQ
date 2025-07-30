import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../app_borders.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.darkPrimary,
  scaffoldBackgroundColor: AppColors.darkBackground,
  fontFamily: 'Poppins',
  textTheme: const TextTheme(
    titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.darkTextPrimary),
    bodyLarge: TextStyle(fontSize: 16, color: AppColors.darkTextPrimary),
    bodySmall: TextStyle(fontSize: 12, color: AppColors.darkTextSecondary),
  ),
  colorScheme: const ColorScheme.dark(
    primary: AppColors.darkPrimary,
    secondary: AppColors.darkSecondary,
    background: AppColors.darkBackground,
    surface: AppColors.darkSurface,
    error: AppColors.darkError,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.darkPrimary,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: AppBorders.md),
    ),
  ),
);
