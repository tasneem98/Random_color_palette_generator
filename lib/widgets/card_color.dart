import 'package:color_palette_generator/core/notifications/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardColor extends StatelessWidget {
  const CardColor({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    final notificationService = LocalNotificationService.instance;

    return InkWell(
      onTap: () {
        Clipboard.setData(ClipboardData(text: color.toHexString())).then((
          value,
        ) {
          //Todo: Display a notification when
          // the selected color's HEX code has been copied
          if (context.mounted) {
            notificationService.showNotification(
              context,
              message: 'Color ${color.toHexString()} copied to clipboard',
            );
          }
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: Card.outlined(color: color)),
              Text(
                color.toHexString(),
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension ColorExtension on Color {
  String toHexString() {
    return '#${toARGB32().toRadixString(16).substring(2).toUpperCase()}';
  }
}
