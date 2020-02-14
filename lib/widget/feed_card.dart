import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedCard extends StatefulWidget {
  @override
  _FeedCardState createState() => _FeedCardState();
}

class _FeedCardState extends State<FeedCard> {
  final FlareControls flareControls = FlareControls();
  bool _like = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.7,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://pbs.twimg.com/profile_images/701038951356899329/0Q9UGy3p_400x400.png'),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'oficial.ge',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () => print('Feed More'),
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.grey[100],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: InkWell(
              onDoubleTap: () => setState(() {
                _like = !_like;
                flareControls.play("like");
              }),
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage('https://picsum.photos/400/400'),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 80,
                      height: 80,
                      child: FlareActor(
                        'assets/instagram_like.flr',
                        controller: flareControls,
                        animation: 'idle',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () => setState(() {
                          _like = !_like;
                          flareControls.play("like");
                        }),
                        child: Icon(
                          _like ? Icons.favorite : Icons.favorite_border,
                          color: _like ? Colors.red : Colors.black,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "1,242",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: <Widget>[
                      Icon(FontAwesomeIcons.comment),
                      SizedBox(width: 5),
                      Text(
                        "24",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
              Icon(Icons.bookmark_border),
            ],
          )
        ],
      ),
    );
  }
}

class FeedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Wrap(
        runSpacing: 15,
        children: <Widget>[
          FeedCard(),
          // FeedCard(),
          // FeedCard(),
        ],
      ),
    );
  }
}
