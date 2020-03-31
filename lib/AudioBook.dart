import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Book.dart';
import 'BooksPage.dart';
import 'main.dart';

class AudioBook extends StatefulWidget {
  final Book livre;
  AudioBook(this.livre);

  @override
  State<StatefulWidget> createState() {
    return AudioBookState(livre);
  }
}

class AudioBookState extends State<AudioBook> {
  //final TextEditingController _useController = new TextEditingController();
  List<String> imgList = List<String>();

  int _current = 0;
  Book _currentBooktoShow;

  AudioBookState(this._currentBooktoShow);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: new Scaffold(
        backgroundColor: Color(0xFF100b20),
        body: SingleChildScrollView(
          child: Container(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ClipRRect(
                //  borderRadius: new BorderRadius.circular(10.0),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),

                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    _currentBooktoShow.imgLink,
                  ),
                  width: width,
                  height: height * 0.63,
                ),
              ),
              Padding(padding: new EdgeInsets.all(8.3)),
              Text(
                "    ${_currentBooktoShow.titre}",
                style: new TextStyle(
                  fontSize: 35.9,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "        ${_currentBooktoShow.auteur}",
                style: new TextStyle(
                    fontSize: 20.9,
                    color: Colors.grey[400],
                    fontFamily: 'Raleway'),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('       '),
                  IconButton(
                    icon: Icon(Icons.star),
                    color: Colors.yellow,
                    onPressed: () {
                      // print(books[0]);
                    },
                  ),
                  Text(
                    "${_currentBooktoShow.mark} ",
                    style: new TextStyle(fontSize: 15.9, color: Colors.white),
                  ),
                  Text(
                    "(${_currentBooktoShow.views})",
                    style: new TextStyle(
                      fontSize: 15.9,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
              /* Center(
                child: new Container(
                  width: 300,
                  height: 55,
                  padding: EdgeInsets.only(left: 14, right: 14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    /* boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300],
                          blurRadius: 10.0,
                          spreadRadius: 0.1)
                    ],*/
                  ),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.fast_rewind,
                            color: Colors.black, size: 30),
                        onPressed: () => {},
                      ),
                      IconButton(
                        icon:
                            Icon(Icons.play_arrow, color: Colors.black, size: 30),
                        onPressed: () => {},
                      ),
                      IconButton(
                        icon: Icon(Icons.fast_forward,
                            color: Colors.black, size: 30),
                        onPressed: () => {},
                      )
                    ],
                  ),
                ),
              ),*/
              Slider(
                value: 0.8,
                onChanged: (double value) {},
                activeColor: Color(0xFFef8262),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      '00:00',
                      style: TextStyle(color: Colors.white),
                    ),
                    new Text(
                      '-32:56',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFef8262),
                      borderRadius: BorderRadius.circular(50.0)),
                  child: IconButton(
                    icon:
                        Icon(Icons.play_arrow, color: Colors.white, size: 32.0),
                    onPressed: () => {},
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
