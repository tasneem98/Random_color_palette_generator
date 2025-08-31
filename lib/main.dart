import 'package:color_palette_generator/core/notifications/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/core/themes/app_theme.dart';
import '/features/colors_palette/presentation/home_page.dart';

//ToDo: Allow the user to generate a new random color palette by shaking the phone
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize notification service
  await LocalNotificationService.instance.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.lightTheme(), home: const HomePage());
  }
}
