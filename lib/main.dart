import 'package:deezer_app/view/screen/play_list_selection.dart';
import 'package:flutter/material.dart';

import 'common/injection/injection.dart';

Future<void> main() async {
  await setupApp();
  runApp(DeezerApp());
}

Future<void> setupApp() async {
  await configureInjection(Env.dev);
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


