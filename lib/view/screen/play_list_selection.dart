import 'package:deezer_app/common/injection/injection.dart';
import 'package:deezer_app/common/resources/colors.dart';
import 'package:deezer_app/common/utils/mapper.dart';
import 'package:deezer_app/data/models/play_list.dart';
import 'package:deezer_app/data/repository/deezer_repository.dart';
import 'package:deezer_app/domain/usecase/get_play_list.dart';
import 'package:deezer_app/ui/widjets/appbar/custom.dart';
import 'package:deezer_app/view/bloc/play_list_selection/bloc.dart';
import 'package:deezer_app/view/bloc/play_list_selection/play_list_selection.dart';
import 'package:deezer_app/view/screen/play_list_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const URL = 'https://picsum.photos/250?image=9';
const PLAY_LIST_NAME = "PLAY_LIST_NAME";

class PlayListSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<PlayListSelectionBloc>(),
        child: _PlayListSelectionScreenView());
  }
}

class _PlayListSelectionScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.bloc<PlayListSelectionBloc>().add(PlayListSelectionLoadData());

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          CustomAppBar(
            child: MaterialButton(
              onPressed: () {},
              child: Text("MaterialButton"),
            ),
          ),
          BlocConsumer<PlayListSelectionBloc, PlayListSelectionState>(
            builder: (context, state) {
              if (state is PlayListSelectionLoading) {
                return _buildLoading();
              } else if (state is PlayListSelectionLoadingSuccess) {
                return _buildSuccess();
              } else if (state is PlayListSelectionLoadingFailure) {
                return _buildFailure();
              } else {
                return Container();
              }
            },
            listener: (context, state) {},
          ),
        ],
      ),
    );
  }
}

class _buildFailure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("REQUEST FAILURE"));
  }
}

class _buildSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.bloc<PlayListSelectionBloc>().state;

    if (state is PlayListSelectionLoadingSuccess) {
      return Expanded(
        child: ListView.separated(
            // scrollDirection: Axis.vertical,
            // shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemCount: state.playLists.length,
            itemBuilder: (context, index) {
              return _DeezerPlayListItem(state.playLists[index]);
            }),
      );
    }
  }
}

class _buildLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("LOADING");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
            child: CircularProgressIndicator(
          backgroundColor: AppColors.surface,
        ))
      ],
    );
  }
}

class _DeezerPlayListItem extends StatelessWidget {
  PlayList playList;

  _DeezerPlayListItem(this.playList);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Material(
          color: AppColors.primaryDark,
          child: InkWell(
            onTap: () => _onPlayListSelect(context, playList),
            child: Card(
              color: AppColors.primaryDark,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(playList.picture_big)))),
                  Text("Title: ${playList.title}"),
                  Text("Duration: ${DateMapper.map(playList.duration)}")
                ],
              ),
            ),
          )),
    );
  }
}

void _onPlayListSelect(BuildContext context, PlayList playList) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => PlayListDetails(playList)));
}
