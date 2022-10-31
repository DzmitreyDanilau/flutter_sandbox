// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_genres_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGenresResponse _$GetGenresResponseFromJson(Map<String, dynamic> json) =>
    GetGenresResponse(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      genres: (json['results'] as List<dynamic>?)
          ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetGenresResponseToJson(GetGenresResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.genres,
    };
