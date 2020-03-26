import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Ebook.dart';
import 'book1.dart';

final List<book> booksList = Util.Books();

void main() {
  var title = "yacine";

  runApp(
    new MaterialApp(
      title: "Make it rain",
      home: new Ebook(),
    ),
  );
}
