import 'package:color_palette_generator/core/utils/constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ButtonStyle disabledButtonStyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: AppConstants.circularRadius50),
  );

  static ThemeData lightTheme() => ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    scaffoldBackgroundColor: Colors.white70,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
      labelMedium: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: AppConstants.circularRadius12,
        ),
        disabledBackgroundColor: Colors.white54,
        disabledForegroundColor: Colors.grey.shade500,
      ),
    ),
  );
}
