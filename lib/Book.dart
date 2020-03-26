import 'dart:core';
import 'package:flutter/cupertino.dart';

class Book {
  String title;
  String author;
  String downloadLink;
  String publisher;
  String publishingYear;
  String summarize;
  String imgLink;

  void sayHello() {
    print("hee");
  }

  void setAuthor(String author) {
    this.author = author;
  }

  void setimgLink(String imgLink) {
    this.imgLink = imgLink;
  }
}
