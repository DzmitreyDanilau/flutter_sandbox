enum GenreStatus { initial, success, error, loading, selected }

extension GenreStatusX on GenreStatus {
  bool get isInitial => this == GenreStatus.initial;
  bool get isSuccess => this == GenreStatus.success;
  bool get isError => this == GenreStatus.error;
  bool get isLoading => this == GenreStatus.loading;
  bool get isSelected => this == GenreStatus.selected;
}
