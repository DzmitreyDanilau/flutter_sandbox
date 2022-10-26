import 'package:flutter_sandbox/network/services/game_service.dart';
import 'package:injectable/injectable.dart';

import '../models/genre.dart';

@injectable
class GameRepository {
  const GameRepository({required this.service});

  final GameService service;

  Future<List<Genre>?> getGenres() async => service.getGenres();
}
