import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sandbox/repositories/repository.dart';
import 'package:flutter_sandbox/ui/home/widgets/genres/bloc/genres_event.dart';
import 'package:flutter_sandbox/ui/home/widgets/genres/bloc/genres_list_state.dart';
import 'package:injectable/injectable.dart';

import '../../../../../di/app_module.dart';
import 'genres_status.dart';

@injectable
class GenresBloc extends Bloc<GenresEvent, GenresListState> {
  GenresBloc() : super(const GenresListState()) {
    on<GetCategories>(_mapGetGenresEventToState);
  }

  final GameRepository repository = getIt<GameRepository>();

  void _mapGetGenresEventToState(
      GetCategories event, Emitter<GenresListState> emit) async {
    emit(state.copyWith(status: GenreStatus.loading));
    try {
      final genres = await repository.getGenres();
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
