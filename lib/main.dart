import 'package:color_palette_generator/core/themes/app_theme.dart';
import 'package:flutter/material.dart';

import '/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.lightTheme(), home: const HomePage());
  }
}
