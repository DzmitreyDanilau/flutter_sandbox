import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dio_logging_interceptor/dio_logging_interceptor.dart';

import '../configs.dart';

@lazySingleton
class ApiService {
  final dio = createDio();

  static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: BASE_URL,
      receiveTimeout: 15000,
      connectTimeout: 15000,
      sendTimeout: 15000,
    ));

    dio.interceptors.add(DioLoggingInterceptor(
        level: Level.body,
        compact: false
    ));

    return dio;
  }
}
