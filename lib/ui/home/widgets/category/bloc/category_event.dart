import 'package:equatable/equatable.dart';

class CategoryEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetCategories extends CategoryEvent {}

class SelectCategory extends CategoryEvent {
  SelectCategory({
    required this.selectedId,
  });

  final int selectedId;

  @override
  List<Object> get props => [selectedId];
}
