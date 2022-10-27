import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dio_logging_interceptor/dio_logging_interceptor.dart';

@lazySingleton
class ApiService {
  final dio = createDio();

  static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: 'https://api.rawg.io/api',
      receiveTimeout: 150000,
      connectTimeout: 150000,
      sendTimeout: 150000,
    ));

    dio.interceptors.add(DioLoggingInterceptor(
        level: Level.body,
        compact: false
    ));

    return dio;
  }
}
