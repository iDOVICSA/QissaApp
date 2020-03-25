import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:qissa_app/Book.dart';

class CarouselDemo extends StatefulWidget {
  CarouselDemo() : super();

  final String title = "Carousel Demo";

  @override
  CarouselDemoState createState() => CarouselDemoState();
}

class CarouselDemoState extends State<CarouselDemo> {
  int _current = 0;
  List imgList = [];
  void sayHello() {
    imgList = [
      'assets/cover1.png',
      'assets/cover2.jpg',
      'assets/cover3.jpg',
      'assets/cover4.jpg',
    ];
  }

  @override
  Widget build(BuildContext context) {
    sayHello();
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xFF100b20),
            body: Container(
              child: new Column(
                children: <Widget>[
                  new Padding(padding: new EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.search),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  new SizedBox(
                    height: 21,
                  ),
                  new Row(
                    children: <Widget>[
                      Expanded(
                          child: CarouselSlider(
                              initialPage: 0,
                              height: 250,
                              onPageChanged: (index) {
                                setState(() {
                                  _current = index;
                                });
                              },
                              items: imgList.map((imgUrl) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                      child: FlatButton(
                                        child: ClipRRect(
                                          borderRadius:
                                              new BorderRadius.circular(10.0),
                                          child: Image(
                                            fit: BoxFit.fill,
                                            image: AssetImage(imgUrl),
                                            width: 180.0,
                                            height: 250.0,
                                          ),
                                        ),
                                        onPressed: () {
                                          print("Holaa amigo ");
                                        },
                                      ),
                                    );
                                  },
                                );
                              }).toList())),
                    ],
                  ),
                  new SizedBox(
                    height: 21,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Best Seller',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Sen',
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Expanded(
                      child: ListView(
                    children: <Widget>[
                      FlatButton(
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: new BorderRadius.circular(10.0),
                                child: Image(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/cover2.jpg'),
                                  width: 90.0,
                                  height: 120.0,
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Wrap(
                                direction: Axis.vertical,
                                children: <Widget>[
                                  Text(
                                    "An Ocean of Minutes",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 21,
                                        fontFamily: 'playFair'),
                                  ),
                                  Text(
                                    "THEA LIM",
                                    style: TextStyle(
                                        color: Colors.white30,
                                        fontFamily: 'Sen'),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "19.99 e",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Text(
                                        " 4.8",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        "  (1256)",
                                        style: TextStyle(
                                          color: Colors.white30,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          onPressed: () {
                            print('CLiquer Iciic');
                          }),
                      SizedBox(
                        height: 8,
                      ),
                      FlatButton(
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: new BorderRadius.circular(10.0),
                                child: Image(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/cover2.jpg'),
                                  width: 90.0,
                                  height: 120.0,
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Wrap(
                                direction: Axis.vertical,
                                children: <Widget>[
                                  Text(
                                    "An Ocean of Minutes",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 21,
                                        fontFamily: 'playFair'),
                                  ),
                                  Text(
                                    "THEA LIM",
                                    style: TextStyle(
                                        color: Colors.white30,
                                        fontFamily: 'Sen'),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "19.99 e",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Text(
                                        " 4.8",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        "  (1256)",
                                        style: TextStyle(
                                          color: Colors.white30,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          onPressed: () {
                            print('CLiquer22 Iciic');
                          }),
                      SizedBox(
                        height: 8,
                      ),
                      FlatButton(
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: new BorderRadius.circular(10.0),
                                child: Image(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/cover2.jpg'),
                                  width: 90.0,
                                  height: 120.0,
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Wrap(
                                direction: Axis.vertical,
                                children: <Widget>[
                                  Text(
                                    "An Ocean of Minutes",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 21,
                                        fontFamily: 'playFair'),
                                  ),
                                  Text(
                                    "THEA LIM",
                                    style: TextStyle(
                                        color: Colors.white30,
                                        fontFamily: 'Sen'),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "19.99 e",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Text(
                                        " 4.8",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        "  (1256)",
                                        style: TextStyle(
                                          color: Colors.white30,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          onPressed: () {
                            print('CLiquer Iciic');
                          }),
                    ],
                  ))
                ],
              ),
            )),
      ),
    );
  }
}
