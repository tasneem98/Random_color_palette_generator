import 'package:color_palette_generator/core/themes/app_theme.dart';
import 'package:color_palette_generator/core/utils/constants.dart';
import 'package:color_palette_generator/widgets/card_color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorListRGB = [
      [255, 255, 255],
      [255, 00, 00],
      [00, 255, 00],
      [00, 00, 255],
      [00, 00, 00],
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 10.0,
            children: [
              Center(
                child: Text(
                  AppConstants.appName,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),

              Expanded(
                child: GridView.builder(
                  itemCount: colorListRGB.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (_, index) => CardColor(
                    color: Color.fromARGB(
                      255,
                      colorListRGB[index][0],
                      colorListRGB[index][1],
                      colorListRGB[index][2],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Generate Palette'),
              ),

              Text(
                AppConstants.shakeDeviceLabel,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: null,
                style: AppTheme.disabledButtonStyle,
                child: const Text(AppConstants.copyColorHint),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
