import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_sandbox/ui/home/widgets/games/bloc/all_games_event.dart';
import 'package:flutter_sandbox/ui/home/widgets/games/bloc/games_all_games_state.dart';
import 'package:injectable/injectable.dart';

import '../../../../../di/app_module.dart';
import '../../../../../repositories/repository.dart';
import 'get_all_games_status.dart';

@injectable
class GetAllGamesBloc extends Bloc<GetGames, GetAllGamesState> {
  GetAllGamesBloc() : super(const GetAllGamesState()) {
    on<GetAllGames>(_mapGetAllGamesEventToState);
  }

  final GameRepository repository = getIt<GameRepository>();

  Future<void> _mapGetAllGamesEventToState(
      GetAllGames event, Emitter<GetAllGamesState> emit) async {
    emit(state.copyWith(status: GetGamesStatus.initial));
    try {
      // final gamesList = await repository.getGames();
      emit(
        state.copyWith(
          status: GetGamesStatus.success,
          gamesList: const [],
        ),
      );
    } catch (error, stacktrace) {
      print(stacktrace);
      emit(state.copyWith(status: GetGamesStatus.error));
    }
  }
}
