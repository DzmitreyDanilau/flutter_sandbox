import 'package:json_annotation/json_annotation.dart';

import '../game.dart';

part 'get_all_games_response.g.dart';

@JsonSerializable()
class GetAllGamesResponse {
  GetAllGamesResponse({
    this.count,
    this.next,
    this.previous,
    this.games,
  });

  final int? count;
  final String? next;
  final String? previous;
  @JsonKey(name: 'results')
  final List<Game>? games;

  factory GetAllGamesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllGamesResponseFromJson(json);
}