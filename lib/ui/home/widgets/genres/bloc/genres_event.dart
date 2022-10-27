import 'package:equatable/equatable.dart';

class GenresEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetCategories extends GenresEvent {}

class SelectCategory extends GenresEvent {
  SelectCategory({
    required this.selectedId,
  });

  final int selectedId;

  @override
  List<Object> get props => [selectedId];
}
