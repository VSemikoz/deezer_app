import 'package:equatable/equatable.dart';

abstract class PlayListSelectionEvent extends Equatable{
  @override
  List<Object> get props => [];
}

class  PlayListSelectionLoadData extends PlayListSelectionEvent{}

// class PlayListSelectionShowData extends PlayListSelectionEvent{}
