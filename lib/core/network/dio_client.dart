import 'package:dio/dio.dart';

import '/core/utils/constants.dart';

class DioClient {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: AppConstants.baseUrl,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      headers: {'Content-Type': 'application/json'},
    ),
  );

  Dio get dio => _dio;
}
