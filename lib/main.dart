import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(CarouselDemo());
}

class CarouselDemo extends StatefulWidget {
  CarouselDemo() : super();

  final String title = "Carousel Demo";

  @override
  CarouselDemoState createState() => CarouselDemoState();
}

class CarouselDemoState extends State<CarouselDemo> {
  int _current = 0;
  List imgList = [
    'assets/cover1.png',
    'assets/cover2.jpg',
    'assets/cover3.jpg',
    'assets/cover4.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff00223E),
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter a search term'),
                ),
                CarouselSlider(
                    height: 300.0,
                    initialPage: 0,
                    onPageChanged: (index) {
                      setState(() {
                        _current = index;
                      });
                    },
                    items: imgList.map((imgUrl) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: 200,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Image.asset(imgUrl, fit: BoxFit.fill),
                          );
                        },
                      );
                    }).toList()),
                SizedBox(
                  height: 24,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: Text(
                    'Book Descritption',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}