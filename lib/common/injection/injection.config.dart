// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../data/repository/deezer_repository.dart';
import '../../domain/usecase/get_play_list.dart';
import '../../view/bloc/play_list_selection/bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<DeezerRepository>(() => LocalDeezerRepository());
  gh.factory<GetPlayListUseCase>(
      () => GetPlayListUseCaseImpl(get<DeezerRepository>()));
  gh.factory<PlayListSelectionBloc>(
      () => PlayListSelectionBloc(get<GetPlayListUseCase>()));
  return get;
}
