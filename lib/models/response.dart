import 'package:flutter_sandbox/models/genre.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';


@JsonSerializable()
class Response {
  Response({
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

  factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);

}
