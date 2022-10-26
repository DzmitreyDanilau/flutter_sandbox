import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiService {
  final dio = createDio();

  static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: 'https://api.rawg.io/api',
      receiveTimeout: 15000,
      connectTimeout: 15000,
      sendTimeout: 15000,
    ));
    return dio;
  }
}
