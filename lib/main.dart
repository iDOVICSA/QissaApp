import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Ebook.dart';

void main() {
  var title = "yacine";

  runApp(
    new MaterialApp(
      title: "Make it rain",
      home: new Ebook(),
    ),
  );
}
