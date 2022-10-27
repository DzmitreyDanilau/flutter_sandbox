import 'package:flutter_sandbox/models/response.dart';
import 'package:flutter_sandbox/network/api.dart';
import 'package:injectable/injectable.dart';

import '../../models/genre.dart';

@lazySingleton
class GameService {
  final ApiService _service;

  GameService(this._service);

  Future<List<Genre>?> getGenres() async {
    var response =
        await _service.dio.get('/genres');

   return Response.fromJson(response.data).genres;
  }
}
