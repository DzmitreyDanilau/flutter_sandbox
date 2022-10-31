import 'package:equatable/equatable.dart';

import '../../../../../models/game.dart';
import 'get_all_games_status.dart';

class GetAllGamesState extends Equatable {
  const GetAllGamesState({
    this.status = GetGamesStatus.initial,
    List<Game>? gamesList,
  }) : gamesList = gamesList ?? const [];

  final GetGamesStatus status;
  final List<Game>? gamesList;

  @override
  List<Object?> get props => [status, gamesList];

  GetAllGamesState copyWith({List<Game>? gamesList, GetGamesStatus? status}) {
    return GetAllGamesState(
      gamesList: gamesList ?? this.gamesList,
      status: status ?? this.status,
    );
  }
}
