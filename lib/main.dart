import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'BooksPage.dart';
import 'package:qissa_app/BooksPage.dart';
import 'BooksPage.dart';
import 'Ebook.dart';
import 'Book.dart';

final List<Book> booksList = Util.Books();

void main() {
  var title = "yacine";

  runApp(
    new MaterialApp(
      title: "Make it rain",
      home: new CarouselDemo(),
    ),
  );
}
