import 'book.dart';
import 'dart:io';

// Function to query books by title, author, or category
void queryBooks(List<Book> bookList) {
  print("Enter the title, author, or category of the book you're looking for: ");
  String? searchKey = stdin.readLineSync() ?? "";
  bool isFound = false;
  for (var book in bookList) {
    if (book.title == searchKey || book.author == searchKey || book.category == searchKey) {
      book.printBook(); // Display the book's details
      isFound = true;
    }
  }
  if (!isFound) {
    print("Sorry, no books matching '$searchKey' were found in the library.");
  }
}