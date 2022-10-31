import 'package:flutter_sandbox/models/network/get_genres_response.dart';
import 'package:flutter_sandbox/network/api.dart';
import 'package:injectable/injectable.dart';

import '../../configs.dart';
import '../../models/genre.dart';

@lazySingleton
class GameService {
  final ApiService _service;

  GameService(this._service);

  Future<GetGenresResponse> getGenres() async {
    var response =
        await _service.dio.get('/genres?key=$API_KEY');

   return GetGenresResponse.fromJson(response.data);
  }
}
