import 'package:deezer_app/common/resources/colors.dart';
import 'package:deezer_app/common/utils/mapper.dart';
import 'package:deezer_app/data/models/play_list.dart';
import 'package:deezer_app/ui/component/circle_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayListDetails extends StatelessWidget {
  PlayList playList;

  PlayListDetails(this.playList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Center(child: Text("${playList.title}")),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Card(
          color: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleImageByUrl(playList.picture_big),
              Center(child: Text("${DateMapper.map(playList.duration)}"))
            ],
          ),
        ),
      ),
    );
  }
}

class _CircleImageByUrl extends StatelessWidget {
  String url;

  _CircleImageByUrl(this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100.0,
        height: 100.0,
        decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
                fit: BoxFit.fill, image: new NetworkImage(url))));
  }
}
