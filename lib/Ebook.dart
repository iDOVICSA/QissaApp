import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Book.dart';
import 'BooksPage.dart';
import 'main.dart';

class Ebook extends StatefulWidget {
  final Book bookToShow;
  Ebook(this.bookToShow);

  @override
  State<StatefulWidget> createState() {
    return EbookState(bookToShow);
  }
}

class EbookState extends State<Ebook> {
  //final TextEditingController _useController = new TextEditingController();
  List<String> imgList = List<String>();

  int _current = 0;
  Book _currentBookShow;

  EbookState(this._currentBookShow);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFF100b20),
      body: SingleChildScrollView(
        child: Container(
            child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(15.3)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.close),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CarouselDemo()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
            new Padding(padding: new EdgeInsets.all(8.3)),
            ClipRRect(
              borderRadius: new BorderRadius.circular(10.0),
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage(
                  _currentBookShow.imgLink,
                ),
                width: 180.0,
                height: 220.0,
              ),
            ),
            Padding(padding: new EdgeInsets.all(12.3)),
            Text(
              "${_currentBookShow.titre}",
              style: new TextStyle(
                fontSize: 35.9,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "${_currentBookShow.auteur}",
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
                  onPressed: () {
                    // print(books[0]);
                  },
                ),
                Text(
                  "${_currentBookShow.mark} ",
                  style: new TextStyle(fontSize: 15.9, color: Colors.white),
                ),
                Text(
                  "(${_currentBookShow.views})",
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
                  onPressed: () => {print(booksList[0].mark)},
                  child: new Text(
                    "${_currentBookShow.price}\$",
                    style: new TextStyle(fontSize: 20.9, color: Colors.black),
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
            new Padding(padding: new EdgeInsets.all(8.3)),

            // new Padding(padding: new EdgeInsets.all(30.3)),
            Row(
              children: <Widget>[
                new Text(
                  "  You can also like",
                  style: new TextStyle(fontSize: 15.9, color: Colors.white),
                ),
              ],
            ),
            new Container(
              height: 120.0,

              // color: Colors.black,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return new Card(
                    margin: EdgeInsets.all(8),
                    color: Color(0xFF100b20),
                    child: InkWell(
                      child: Image.asset(
                        booksList[index].imgLink,
                        //    color: Colors.black,
                        width: 80.0,
                        height: 120.0,
                      ),
                      onTap: () {
                        setState(() {
                          _current = index;
                          _currentBookShow = booksList[index];
                        });
                        print(index);
                      },
                    ),
                  );
                },
                itemCount: booksList.length,
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class Util {
  static List<Book> Books() {
    // print("zzzzzzzzzzzzzzzzzzzzzzzzz");
    Book b1 = new Book("Rudyard kipling", "The Jungle Book", 19.99, 4.8, 2390,
        'images/junglebook.jpg');

    Book b2 = new Book(
      "J.R.R tolkeien",
      "The Hobbit",
      32.99,
      9.8,
      8302,
      'images/hobbit.jpg',
    );
    Book b3 = new Book("J.K Rowling", "Harry Potter", 78.99, 7.3, 6732,
        'images/harrypotter.jpg');
    Book b4 = new Book(
      "Junot Diaz",
      "The sun , moon , stars",
      47.99,
      3.8,
      32,
      'images/stars.png',
    );
    Book b5 = new Book(
      "Stasia Chergui",
      "Taboo",
      83.99,
      4.8,
      478,
      'images/taboo.PNG',
    );
    Book b6 = new Book("Tom Angelegebra", "Star Wars", 19.99, 4.8, 2390,
        'images/starwars.jpg');
    List<Book> l = List<Book>();

    l.add(b1);
    l.add(b2);
    l.add(b3);
    l.add(b4);
    l.add(b5);
    l.add(b6);

    return l;
  }
}
