import 'package:color_palette_generator/features/colors_palette/providers/shake_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/core/notifications/notification_service.dart';
import '/core/themes/app_theme.dart';
import '/features/colors_palette/presentation/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize notification service
  await LocalNotificationService.instance.init();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Allow the user to generate a new random color palette by shaking the phone
    ref.watch(shakeDeviceProvider);

    return MaterialApp(
      theme: AppTheme.lightTheme(),
      title: 'Color Palette Generator',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
