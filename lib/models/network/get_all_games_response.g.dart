// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_games_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllGamesResponse _$GetAllGamesResponseFromJson(Map<String, dynamic> json) =>
    GetAllGamesResponse(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      games: (json['results'] as List<dynamic>?)
          ?.map((e) => Game.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllGamesResponseToJson(
        GetAllGamesResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.games,
    };
