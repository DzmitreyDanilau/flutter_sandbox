import 'package:json_annotation/json_annotation.dart';

import 'game.dart';

part 'genre.g.dart';

@JsonSerializable()
class Genre {
  Genre({
    required this.id,
    this.name,
    this.slug,
    this.gamesCount,
    this.imageBackground,
    this.domain,
    this.language,
    this.gamesList,
  });

  final int id;
  final String? name;
  final String? slug;
  final int? gamesCount;
  final String? imageBackground;
  final String? domain;
  final String? language;
  final List<Game>? gamesList;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}


