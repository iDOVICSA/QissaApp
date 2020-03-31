import 'package:flutter/material.dart';
import 'package:qissa_app/main.dart';

import 'Book.dart';

class FavouriteBooks extends StatefulWidget {
  @override
  _FavouriteBooksState createState() => _FavouriteBooksState();
}

class _FavouriteBooksState extends State<FavouriteBooks> {
  List<bool> isSelected = [true, false];
  int _current;
  Book _currentBookShow;
  List<Book> favouriteBooks = [];
  void initFavBooksLIst() {
    // List of books to display on ListView
    Book b1 = new Book("Rudyard kipling", "The Jungle Book", 19.99, 4.8, 2390,
        'assets/cover3.jpg');
    Book b2 = new Book(
      "J.R.R tolkeien",
      "The Hobbit",
      32.99,
      9.8,
      8302,
      'images/hobbit.jpg',
    );
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
    favouriteBooks.clear();
    favouriteBooks.add(b1);
    favouriteBooks.add(b2);
    favouriteBooks.add(b4);
    favouriteBooks.add(b5);
    favouriteBooks.add(b6);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 32,
            ),
            Center(
              child: ToggleButtons(
                children: <Widget>[
                  Text(
                    "Books",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Audio",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
                renderBorder: false,
                color: Color(0xFF100b20),
                borderRadius: BorderRadius.circular(50),
                onPressed: (int index) {
                  print("i got pressed $index");
                  setState(() {
                    for (int indexBtn = 0;
                        indexBtn < isSelected.length;
                        indexBtn++) {
                      if (indexBtn == index) {
                        isSelected[indexBtn] = !isSelected[indexBtn];
                      } else {
                        isSelected[indexBtn] = false;
                      }
                    }
                    print(isSelected[index].toString() + "---------");
                  });
                },
                isSelected: isSelected,
              ),
            ),
            SizedBox(
              height: 48,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 24,
                ),
                Text(
                  "My Favourite Books",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: TextField(
                style: TextStyle(
                  color: Color(0xFF100b20),
                ),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Color(0xffcbced3),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    hintText: "What are you looking for"),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Row(
                    children: <Widget>[
                      Image.asset(
                        booksList[index].imgLink,
                        width: 80,
                        height: 100,
                      ),
                      Image.asset(
                        booksList[index + 1].imgLink,
                        width: 80,
                        height: 100,
                      ),
                    ],
                  );
                },
                itemCount: booksList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
