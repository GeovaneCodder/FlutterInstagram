import 'package:FlutterInstagram/create_media.dart';
import 'package:FlutterInstagram/profile.dart';
import 'package:FlutterInstagram/publication_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'feed.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(Instagram());
}

class Instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Feed(),
        '/createmedia': (context) => CreateMedia(),
        '/profile': (context) => Profile(),
        '/publication-detail': (context) => PublicationDetail(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
    );
  }
}
