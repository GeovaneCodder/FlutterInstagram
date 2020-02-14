import 'package:f_instagram/widget/feed_card.dart';
import 'package:f_instagram/widget/storie_list.dart';
import 'package:f_instagram/widget/top_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(Instagram());

class Instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      floatingActionButton: Container(
        width: 80,
        height: 80,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.teal,
                Colors.teal[200],
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Icon(Icons.add, color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 70,
          child: Row(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                iconSize: 30,
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 30,
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 30,
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 30,
                icon: Icon(Icons.people),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
