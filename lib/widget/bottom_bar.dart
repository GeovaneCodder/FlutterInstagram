import 'package:flutter/material.dart';

class BottomBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;

    path.moveTo(0, sh * 0.35);
    path.lineTo(sw * 0.3, sh * 0.35);
    path.cubicTo(sw * 0.4, sh * 0.35, sw * 0.4, 0, sw * 0.5, 0);
    path.cubicTo(sw * 0.6, 0, sw * 0.6, sh * 0.35, sw * 0.7, sh * 0.35);
    path.lineTo(sw, sh * 0.35);
    path.lineTo(sw, sh);
    path.lineTo(0, sh);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class BottomBar extends StatelessWidget {
  _navigationTo(BuildContext context, {String to}) {
    if (to == 'back') {
      Navigator.pop(context);
    }

    return Navigator.pushNamed(context, to);
  }

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomBarClipper(),
      child: Container(
        height: 110,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(25, 0, 25, 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              GestureDetector(
                onTap: () => _navigationTo(context, to: '/'),
                child: Icon(Icons.home, size: 28),
              ),
              Icon(Icons.search, size: 28),
              GestureDetector(
                onTap: () => _navigationTo(context, to: '/createmedia'),
                child: Container(
                  width: 45,
                  height: 45,
                  margin: EdgeInsets.only(bottom: 30),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Colors.orange.shade400.withOpacity(.6),
                          Colors.pink,
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Colors.deepOrangeAccent.shade100.withOpacity(.6),
                          offset: Offset(0, 10),
                          blurRadius: 20,
                        )
                      ],
                      borderRadius: BorderRadius.circular(25)),
                  child: Icon(Icons.add, color: Colors.grey.shade300),
                ),
              ),
              Icon(Icons.favorite_border, size: 28),
              GestureDetector(
                onTap: () => _navigationTo(context, to: '/profile'),
                child: Icon(Icons.perm_identity, size: 28),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
