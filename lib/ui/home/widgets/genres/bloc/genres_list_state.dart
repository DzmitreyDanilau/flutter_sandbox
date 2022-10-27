// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';
import 'package:flutter_sandbox/ui/home/widgets/genres/bloc/genres_status.dart';

import '../../../../../models/genre.dart';

class GenresListState extends Equatable {
  const GenresListState(
      {this.status = GenreStatus.initial,
      List<Genre>? genres,
      this.selectedItemId = 0})
      : genres = genres ?? const [];

  final List<Genre> genres;
  final GenreStatus status;
  final int selectedItemId;

  @override
  List<Object> get props => [status, genres, selectedItemId];

  GenresListState copyWith(
      {List<Genre>? categories, GenreStatus? status, int? selectedItemId}) {
    return GenresListState(
      genres: categories ?? genres,
      status: status ?? this.status,
      selectedItemId: selectedItemId ?? this.selectedItemId,
    );
  }
}
