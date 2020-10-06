import 'package:equatable/equatable.dart';

class PlayList extends Equatable {
  String title;
  int duration;
  String picture_small;
  String picture_big;

  PlayList(this.title, this.duration, this.picture_small, this.picture_big);

  @override
  List<Object> get props => [title, duration, picture_small];
}
