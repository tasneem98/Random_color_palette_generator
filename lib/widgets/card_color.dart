import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardColor extends StatelessWidget {
  const CardColor({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Clipboard.setData(ClipboardData(text: color.toHexString()));
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
              Expanded(child: ColoredBox(color: color)),
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
