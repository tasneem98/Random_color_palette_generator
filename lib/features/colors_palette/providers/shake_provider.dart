import 'package:color_palette_generator/features/colors_palette/providers/colors_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shake/shake.dart';

final shakeDeviceProvider = Provider<ShakeDetector>((Ref ref) {
  final detector = ShakeDetector.autoStart(
    onPhoneShake: (event) {
      // Refresh the colorsProvider
      ref.invalidate(colorsProvider);
    },
    minimumShakeCount: 1,
    shakeCountResetTime: 3000,
  );

  // Stop listening to shake events when the widget is disposed
  ref.onDispose(() => detector.stopListening());

  return detector;
});
