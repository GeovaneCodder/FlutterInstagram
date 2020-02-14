import 'package:flutter/material.dart';
import 'package:dashed_circle/dashed_circle.dart';

class Avatar extends StatefulWidget {
  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> with SingleTickerProviderStateMixin {
  Animation gap;
  Animation base;
  Animation reverse;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    base = CurvedAnimation(parent: controller, curve: Curves.easeOut);
    reverse = Tween<double>(begin: 0.0, end: -1.0).animate(base);
    gap = Tween<double>(begin: 3.0, end: 0.0).animate(base)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      padding: EdgeInsets.all(15),
      child: RotationTransition(
        turns: base,
        child: DashedCircle(
          gapSize: gap.value,
          dashes: 10,
          color: Color(0XFFED4634),
          child: RotationTransition(
            turns: reverse,
            child: Padding(
              padding: EdgeInsets.all(3.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://pbs.twimg.com/profile_images/701038951356899329/0Q9UGy3p_400x400.png"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class StorieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Avatar(),
          Avatar(),
          Avatar(),
          Avatar(),
          Avatar(),
          Avatar(),
          Avatar(),
          Avatar(),
        ],
      ),
    );
  }
}
