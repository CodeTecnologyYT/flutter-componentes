import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(3.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.clarin.com/sociedad/American-Stan-Lee-inmigrantes-Hollywood_CLAIMA20130127_0103_14.jpg'),
              radius:  25.0,
            ),
          )
          ,Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://img.peru21.pe/files/article_content_ec_fotos/uploads/2017/08/09/598b8aac7e32c.jpeg'),
          placeholder:  AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}