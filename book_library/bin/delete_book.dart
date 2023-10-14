import 'book.dart';
import 'dart:io';

void deleteBook(List<Book> bookList) {
  print("Please enter the title of the book: ");
  String? title = stdin.readLineSync() ?? "";
  bool isFound = false;
  bool soldOut = false;
  for (var book in bookList) {
    if (book.title == title) {
      book.deleteCopy();
      if (book.copies == 0) {
        soldOut = true;
      }
      isFound = true;
      print("$title has been deleted");
    }
  }
  if (!isFound) {
    print("Sorry, the book could not be found.");
  }
  if (soldOut) {
    bookList.removeWhere((deletedBook) => deletedBook.title == title);
  }
}