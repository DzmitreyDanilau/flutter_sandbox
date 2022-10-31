import 'package:json_annotation/json_annotation.dart';

import '../genre.dart';

part 'get_genres_response.g.dart';


@JsonSerializable()
class GetGenresResponse {
  GetGenresResponse({
    this.count,
    this.next,
    this.previous,
    this.genres,
  });

  final int? count;
  final String? next;
  final String? previous;
  @JsonKey(name: 'results')
  final List<Genre>? genres;

  factory GetGenresResponse.fromJson(Map<String, dynamic> json) =>
      _$GetGenresResponseFromJson(json);
}
