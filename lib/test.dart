import 'Book.dart';

class test {
  List<Book> booksListToDisplay;

  void initBooksToDisplay() {
    Book book;
    for (int i = 1; i < 5; i++) {
      book = new Book();
      book.setAuthor("author$i");
      if (i == 0) {
        book.setimgLink("assets/cover$i.png");
      } else {
        book.setimgLink("assets/cover$i.jpg");
      }
      // initialiser les autres champs
      booksListToDisplay.add(book);
    }
  }

  List<String> imgList = new List(); // contient les liens vers les images ;

  void initImgList() {
    for (int i = 1; i < 5; i++) {
      imgList.add(booksListToDisplay[i]
          .imgLink); // remplir la list des liens d'apres la listes des livres
    }
  }
}
