// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../network/api.dart' as _i3;
import '../network/services/game_service.dart' as _i4;
import '../repositories/repository.dart' as _i7;
import '../ui/home/widgets/games/bloc/games_list_bloc.dart' as _i6;
import '../ui/home/widgets/genres/bloc/genres_block.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.ApiService>(() => _i3.ApiService());
  gh.lazySingleton<_i4.GameService>(
      () => _i4.GameService(get<_i3.ApiService>()));
  gh.factory<_i5.GenresBloc>(() => _i5.GenresBloc());
  gh.factory<_i6.GetAllGamesBloc>(() => _i6.GetAllGamesBloc());
  gh.lazySingleton<_i7.GameRepository>(
      () => _i7.GameRepository(service: get<_i4.GameService>()));
  return get;
}
