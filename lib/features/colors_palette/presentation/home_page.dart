import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/core/themes/app_theme.dart';
import '/core/utils/constants.dart';
import '/features/colors_palette/providers/colors_providers.dart';
import '/widgets/card_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer(
          builder: (context, provider, child) {
            final colors = provider.watch(colorsProvider);
            return Padding(
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

                  colors.when(
                    skipLoadingOnRefresh: false,
                    data: (data) => Expanded(
                      child: GridView.builder(
                        itemCount: data.result!.length,

                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            ),
                        itemBuilder: (_, index) => CardColor(
                          color: Color.fromARGB(
                            255,
                            colors.value!.result![index][0],
                            colors.value!.result![index][1],
                            colors.value!.result![index][2],
                          ),
                        ),
                      ),
                    ),
                    error: (error, stackTrace) => Center(
                      child: Text(
                        '--Error: ${error.toString()}\n--Stack Trace: $stackTrace',
                      ),
                    ),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      provider.invalidate(colorsProvider);
                    },
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
            );
          },
        ),
      ),
    );
  }
}
