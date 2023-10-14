import 'book.dart';
import 'dart:io';

void queryBooks(List<Book> bookList) {
  print("Enter the title, author, or category of the book: ");
  String? searchKey = stdin.readLineSync() ?? "";
  bool isFound = false;
  for (var book in bookList) {
    if (book.title == searchKey || book.author == searchKey || book.category == searchKey) {
      book.printBook();
      isFound = true;
    }
  }
  if (!isFound) {
    print("Sorry, the book could not be found.");
  }
}