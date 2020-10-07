import 'package:flutter/cupertino.dart';

class CircleImageByUrl extends StatelessWidget {
  String url;

  CircleImageByUrl(this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400.0,
        height: 400.0,
        decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage(url))));
  }
}
