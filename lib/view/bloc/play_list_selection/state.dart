import 'package:deezer_app/data/models/play_list.dart';
import 'package:equatable/equatable.dart';

abstract class PlayListSelectionState extends Equatable {
  @override
  List<Object> get props => [];
}

class PlayListSelectionLoading extends PlayListSelectionState {}

class PlayListSelectionLoadingSuccess extends PlayListSelectionState {
  final List<PlayList> playLists;

  PlayListSelectionLoadingSuccess(this.playLists);

  @override
  List<Object> get props => [playLists];
}

class PlayListSelectionLoadingFailure extends PlayListSelectionState {}
