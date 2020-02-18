import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PublicationDetail extends StatelessWidget {
  // final publication;

  // PublicationDetail(this.publication);

  Widget _publicationDescription() {
    return RichText(
      softWrap: true,
      text: TextSpan(
        text: 'Geovane Souza: ',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        children: <TextSpan>[
          TextSpan(
            text:
                '''Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker''',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }

  Widget _publicationActions() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.favorite, color: Colors.red),
                SizedBox(width: 5),
                Text('1,242'),
              ],
            ),
            SizedBox(width: 20),
            Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.comment),
                SizedBox(width: 5),
                Text('24'),
              ],
            ),
          ]),
          Icon(Icons.bookmark_border),
        ],
      ),
    );
  }

  Widget _publicationBox(context) {
    return Stack(
      children: <Widget>[
        Hero(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage('https://picsum.photos/400/400'),
              ),
            ),
          ),
          tag: 'geteste',
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _publicationComments(context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://pbs.twimg.com/profile_images/701038951356899329/0Q9UGy3p_400x400.png"),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '@oficial.ge',
              style: TextStyle(
                  color: Colors.grey[400], fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Container(
              width: MediaQuery.of(context).size.width - 80,
              child: RichText(
                softWrap: true,
                text: TextSpan(
                  text:
                      'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _publicationBox(context),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 10),
                        _publicationActions(),
                        SizedBox(height: 10),
                        _publicationDescription(),
                        SizedBox(height: 10),
                        Text(
                          '12 mins ago',
                          style: TextStyle(color: Colors.grey[400]),
                        ),
                        Divider(),
                        SizedBox(height: 10),
                        _publicationComments(context),
                        SizedBox(height: 20),
                        _publicationComments(context),
                        SizedBox(height: 20),
                        _publicationComments(context),
                        SizedBox(height: 80),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                      width: MediaQuery.of(context).size.width - 20,
                      padding: EdgeInsets.only(left: 10, right: 10),
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://pbs.twimg.com/profile_images/701038951356899329/0Q9UGy3p_400x400.png"),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration.collapsed(
                                hintText: 'Enter your comment',
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
