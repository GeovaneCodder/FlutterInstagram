import 'package:flutter/material.dart';

class BottomBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Colors.redAccent[400],
              Colors.orangeAccent[200],
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Icon(Icons.add, color: Colors.white, size: 35),
      ),
    );
  }
}
