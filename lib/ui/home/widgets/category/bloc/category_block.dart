import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/repositories/repository.dart';
import 'package:flutter_sandbox/ui/home/widgets/category/bloc/category_event.dart';
import 'package:flutter_sandbox/ui/home/widgets/category/bloc/categories_list_state.dart';
import 'package:injectable/injectable.dart';

import '../../../../../di/app_module.dart';
import 'category_status.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoriesListState> {
  CategoryBloc() : super(const CategoriesListState()) {
    on<GetCategories>(_mapGetCategoriesEventToState);
  }

  final GameRepository repository = getIt<GameRepository>();

  void _mapGetCategoriesEventToState(
      GetCategories event, Emitter<CategoriesListState> emit) async {
    emit(state.copyWith(status: GenreStatus.loading));
    try {
      final genres = await repository.getGenres() ?? List.empty();
      emit(
        state.copyWith(
          status: GenreStatus.success,
          categories: genres,
        ),
      );
    } catch (error, stacktrace) {
      print(stacktrace);
      emit(state.copyWith(status: GenreStatus.error));
    }
  }
}
