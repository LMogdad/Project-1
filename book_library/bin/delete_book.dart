import 'book.dart';
import 'dart:io';

// Function to delete a book from the library
void deleteBook(List<Book> bookList) {
  print("Please enter the title of the book you want to delete: ");
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
      print("$title has been deleted from the library.");
    }
  }
  if (!isFound) {
    print("Sorry, the book '$title' could not be found in the library.");
  }
  if (soldOut) {
    bookList.removeWhere((deletedBook) => deletedBook.title == title);
    print("$title has been removed from the library because it is sold out.");
  }
}