import 'book.dart';
import 'dart:io';

// Function to delete a book from the library
void deleteBook(List<Book> bookList) {
  print("Please enter the title of the book you want to delete: ");
  String? title = stdin.readLineSync() ?? "";
  bool isFound = false;
  for (var book in bookList) {
    if (book.title == title) {
      print("Enter the number of copies you want to delete:");
      late int copies;
      bool isCorrect = false;
        while (!isCorrect) {
          try {
            copies = int.parse(stdin.readLineSync()!);
            isCorrect = true;
          } catch (error) {
            print("The number of copies must be a number.");
          }
        }
      book.deleteCopy(copies);
      isFound = true;
      print("$title has been deleted from the library.");
    }
  }
  if (!isFound) {
    print("Sorry, the book '$title' could not be found in the library.");
  }
}