import 'package:flutter/material.dart';

import '/core/utils/constants.dart';

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
    snackBarTheme: SnackBarThemeData(
      backgroundColor: Colors.deepPurple.shade50,
      contentTextStyle: const TextStyle(
        color: Colors.deepPurple,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      elevation: 5.0,
      behavior: SnackBarBehavior.floating,
      shape: ShapeBorder.lerp(
        RoundedRectangleBorder(borderRadius: AppConstants.circularRadius12),
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: const BorderSide(width: 2.0),
        ),
        0.5,
      ),
    ),
  );
}
