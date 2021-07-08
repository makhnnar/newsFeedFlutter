
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_feed_with_db/models/db/news_db_model.dart';

class NewsListItem extends StatelessWidget {

  final NewsDBModel terapeuta;

  NewsListItem(
      this.terapeuta
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {

      },
      child: Container(
        margin: EdgeInsets.only(
            top: 4.0,
            left: 4.0,
            right: 4.0,
            bottom: 4.0
        ),
        height: 80.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            gradient: LinearGradient(
                colors: [
                  Color(0xFFc8d2e3),
                  Color(0xFFafb7c4)
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp
            )
        ),
        child:Row(
          children:<Widget>[
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                  "${this.terapeuta.id}",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "Lato",
                      color: Colors.black
                  ),
                )
                ],
              ),
            ),
            Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        subString(this.terapeuta.titulo),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: "Lato",
                            color: Colors.black
                        ),
                      ),
                      Text(
                          this.terapeuta.tipo,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: "Lato",
                              color: Colors.black54
                          )
                      ),
                      Text(
                          subString(this.terapeuta.link),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: "Lato",
                              color: Colors.black54
                          )
                      ),
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }

  String subString(String str){
    if(str==null) return "";
    if(str.length>=20) return str.substring(0,20);
    return str;
  }

}