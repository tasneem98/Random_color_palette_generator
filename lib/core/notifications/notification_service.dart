import 'package:color_palette_generator/core/utils/app_alert_dialog.dart';
import 'package:color_palette_generator/core/utils/app_snck_bar.dart';
import 'package:color_palette_generator/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';

class LocalNotificationService {
  LocalNotificationService._internal();

  static final LocalNotificationService _instance =
      LocalNotificationService._internal();

  static LocalNotificationService get instance => _instance;

  final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    const androidSettings = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );
    const iosSettings = DarwinInitializationSettings();
    const settings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );
    await _plugin.initialize(settings);
  }

  static NotificationDetails details() => const NotificationDetails(
    android: AndroidNotificationDetails(
      'channelId',
      AppConstants.appName,
      channelDescription:
          'Main notification channel for ${AppConstants.appName}',
      channelShowBadge: true,
      visibility: NotificationVisibility.public,
      playSound: true,
      colorized: true,
      importance: Importance.high,
      priority: Priority.high,
    ),
  );

  Future<void> showNotification(
    BuildContext context, {
    required String message,
  }) async {
    final notificationPermission = await Permission.notification.status;

    if (notificationPermission.isGranted) {
      await _plugin.show(0, '', message, details());
    } else if (notificationPermission.isDenied) {
      bool? permissionRequested;
      final implementation = _plugin
          .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin
          >();

      if (implementation != null) {
        permissionRequested = await implementation
            .requestNotificationsPermission();
      } else {
        final newNotificationPermission = await Permission.notification
            .request();
        permissionRequested = newNotificationPermission.isGranted;
      }

      if (permissionRequested == true) {
        await _plugin.show(0, '', message, details());
      } else {
        if (context.mounted) {
          AppSnackBar.showSnackBar(
            context,
            message: "Notifications permission denied.",
          );
        }
      }
    } else if (notificationPermission.isPermanentlyDenied ||
        notificationPermission.isRestricted) {
      if (context.mounted) {
        AppAlertDialog.showAlertDialog(
          context,
          title: "Notification Permission Denied",
          message:
              "Notifications are disabled. Please enable them in app settings to receive notifications.",
          actionButton: TextButton(
            onPressed: () async {
              Navigator.pop(context);
              await openAppSettings();
              final statusAfterSettings = await Permission.notification.status;
              if (statusAfterSettings.isGranted) {
                await _plugin.show(0, '', message, details());
              } else if (context.mounted) {
                AppSnackBar.showSnackBar(
                  context,
                  message: 'Notifications still not enabled from settings.',
                );
              }
            },
            child: const Text('Go To Settings'),
          ),
        );
      }
    }
  }
}
