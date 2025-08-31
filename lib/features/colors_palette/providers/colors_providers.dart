import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/core/network/dio_client.dart';
import '/features/colors_palette/data/api_repository.dart';
import '/features/colors_palette/data/api_service.dart';
import '/features/colors_palette/data/models/generated_palette.dart';

// DioClient provider
final dioClientProvider = Provider<DioClient>((ref) => DioClient());

// ApiService provider
final colorsApiProvider = Provider<ApiService>(
  (ref) => ApiService(ref.watch(dioClientProvider)),
);

// Repository provider
final colorsRepositoryProvider = Provider<ApiRepository>(
  (ref) => ApiRepository(ref.watch(colorsApiProvider)),
);

// FutureProvider for fetching colors
final colorsProvider = FutureProvider<GeneratedPalette>((ref) async {
  return ref.watch(colorsRepositoryProvider).getColors();
});
