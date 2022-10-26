import 'package:flutter_sandbox/network/api.dart';
import 'package:injectable/injectable.dart';

import '../../models/genre.dart';

@lazySingleton
class GameService {
  final ApiService _service;

  GameService(this._service);

  Future<List<Genre>?> getGenres() async {
    var response = await _service.dio.get<List<Genre>>('/genres?key=f9c38b7f5bc04cd780f0fdd33de71414');
    return response.data;
  }
}
