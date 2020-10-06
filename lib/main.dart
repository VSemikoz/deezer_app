import 'package:deezer_app/view/screen/play_list_selection.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DeezerApp());
}

class DeezerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DeezerApp",
      debugShowCheckedModeBanner: false,
      home: PlayListSelection(),
    );
    // return SelectPlayList();
  }
}


