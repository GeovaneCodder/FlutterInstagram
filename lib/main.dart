import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widget/bottom_bar_button.dart';
import 'widget/bottom_bar.dart';
import 'widget/feed_card.dart';
import 'widget/storie_list.dart';
import 'widget/top_bar.dart';

void main() => runApp(Instagram());

void _portraitModeOnly() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class Instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _portraitModeOnly();

    return Scaffold(
      appBar: TopBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              StorieList(),
              FeedList(),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BottomBarButton(),
      bottomNavigationBar: BottomBar(),
    );
  }
}
