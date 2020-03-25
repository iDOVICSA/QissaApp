import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ebook extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EbookState();
  }
}

class EbookState extends State<Ebook> {
  //final TextEditingController _useController = new TextEditingController();
  String titre = "The Jungle Book";
  String Auteur = "Rudyard kipling";
  double mark = 4.8;
  int views = 2390;
  double price = 19.99;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: Container(
            color: Color(0xFF100b20),
            child: new Column(
              children: <Widget>[
                new Padding(padding: new EdgeInsets.all(15.3)),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.close),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.shopping_cart),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ],
                ),
                new Padding(padding: new EdgeInsets.all(12.3)),
                ClipRRect(
                  borderRadius: new BorderRadius.circular(10.0),
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/cover2.jpg'),
                    width: 180.0,
                    height: 250.0,
                  ),
                ),
                Padding(padding: new EdgeInsets.all(12.3)),
                Text(
                  "$titre",
                  style: new TextStyle(
                    fontSize: 35.9,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "$Auteur",
                  style: new TextStyle(
                      fontSize: 20.9,
                      color: Colors.grey[400],
                      fontFamily: 'Raleway'),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.star),
                      color: Colors.yellow,
                      onPressed: () {},
                    ),
                    Text(
                      "$mark  ",
                      style: new TextStyle(fontSize: 15.9, color: Colors.white),
                    ),
                    Text(
                      "($views)",
                      style: new TextStyle(
                        fontSize: 15.9,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //   new Text('                 '),
                    new RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                          //topRight: Radius.circular(15.0)
                        ),
                      ),
                      color: Colors.white,
                      onPressed: () => {},
                      child: new Text(
                        "$price  \$",
                        style:
                            new TextStyle(fontSize: 20.9, color: Colors.black),
                      ),
                    ),
                    new RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                          //topRight: Radius.circular(15.0)
                        ),
                      ),
                      color: Color(0xFFef8262),
                      textColor: Colors.white,
                      onPressed: () => {},
                      child: new Text(
                        "Free Preview",
                        style: new TextStyle(fontSize: 20.9),
                      ),
                    ),
                  ],
                ),

                // new Padding(padding: new EdgeInsets.all(30.3)),
                new Text(
                  "You can also like",
                  style: new TextStyle(fontSize: 20.9, color: Colors.white),
                ),
              ],
            )),
      ),
    );
  }
}
