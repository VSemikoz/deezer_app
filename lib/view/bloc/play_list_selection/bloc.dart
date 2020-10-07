import 'package:deezer_app/domain/usecase/get_play_list.dart';
import 'package:deezer_app/view/bloc/play_list_selection/event.dart';
import 'package:deezer_app/view/bloc/play_list_selection/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class PlayListSelectionBloc
    extends Bloc<PlayListSelectionEvent, PlayListSelectionState> {
  final GetPlayListUseCase useCase;

  PlayListSelectionBloc(this.useCase) : super(PlayListSelectionLoading());

  @override
  Stream<PlayListSelectionState> mapEventToState(
      PlayListSelectionEvent event) async* {
    print("mapEventToState");
    if (event is PlayListSelectionLoadData) {
      yield await _loadData();
    }
  }

  Future<PlayListSelectionState> _loadData() async {
    print("_loadData");
    final result = await useCase();

    if (result.isSuccessful) {
      return PlayListSelectionLoadingSuccess(result.value);
    }
    if (result.isFailure) {
      return PlayListSelectionLoadingFailure();
    }
    return PlayListSelectionLoading();
  }
}
