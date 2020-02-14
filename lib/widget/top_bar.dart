import 'package:flutter/material.dart';

class TopBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () => print('Tirar uma foto'),
            child: Image.network(
              'https://cdn3.iconfinder.com/data/icons/basic-user-interface-application/32/INSTAGRAM_ICON_SETS-10-512.png',
              width: 23,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/800px-Instagram_logo.svg.png',
              width: 110,
            ),
          ),
          Row(
            children: <Widget>[
              InkWell(
                onTap: () => print('Criar um IGTV'),
                child: Image.network(
                  'https://en.facebookbrand.com/wp-content/uploads/2019/01/IGTV-Icon-060718-Gradient.png',
                  width: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: InkWell(
                  onTap: () => print('Ir para o direct'),
                  child: Image.network(
                    'https://qph.fs.quoracdn.net/main-qimg-094b6418c35690a0a9425642728f081b',
                    width: 30,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
