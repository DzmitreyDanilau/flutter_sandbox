import 'package:flutter_sandbox/models/response.dart';
import 'package:flutter_sandbox/network/api.dart';
import 'package:injectable/injectable.dart';

import '../../configs.dart';
import '../../models/genre.dart';

@lazySingleton
class GameService {
  final ApiService _service;

  GameService(this._service);

  Future<List<Genre>?> getGenres() async {
    var response =
        await _service.dio.get('/genres?key=$API_KEY');

   return Response.fromJson(response.data).genres;
  }
}
