import 'dart:convert';

import 'package:dio/dio.dart';

import '/core/network/api_exceptions.dart';
import '/core/network/dio_client.dart';
import '/features/colors_palette/data/models/generated_palette.dart';

class ApiService {
  final DioClient dioClient;

  ApiService(this.dioClient);

  Future<GeneratedPalette> fetchColors() async {
    final String data = json.encode({"model": "default"});

    try {
      final response = await dioClient.dio.get('/api/', data: data);
      return GeneratedPalette.fromJson(jsonDecode(response.data));
    } on DioException catch (e) {
      throw ApiExceptions('Failed to fetch colors with error: ${e.message}');
    }
  }
}
