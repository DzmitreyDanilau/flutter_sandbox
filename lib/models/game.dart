import 'package:json_annotation/json_annotation.dart';

part 'game.g.dart';

@JsonSerializable()
class Game {
  Game({required this.id, this.name, this.slug});

  final int? id;
  final String? name;
  final String? slug;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}
