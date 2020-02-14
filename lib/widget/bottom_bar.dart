import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
    );
  }
}
