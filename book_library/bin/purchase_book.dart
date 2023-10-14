import 'book.dart';
import 'dart:io';

// Function to purchase books
void purchaseBook(List<Book> bookList) {
  print("Please enter the title of the book you want to purchase: ");
  String? title = stdin.readLineSync() ?? "";
  bool isFound = false;
  bool soldOut = false;
  bool isPurchased;
  late int copies;

  for (var book in bookList) {
    if (book.title == title) {
      bool isCorrect = false;
      print("Enter the number of copies you want to purchase: ");
      while (!isCorrect) {
        try {
          copies = int.parse(stdin.readLineSync()!);
          isCorrect = true;
        } catch (error) {
          print("The number of copies must be a valid number.");
        }
      }
      isPurchased = book.purchase(copies);
      if (book.copies == 0) {
        soldOut = true;
      }
      isFound = true;
      if(!isPurchased){
        print("Not enough copies in stock to fulfill this purchase.");
      }
    }
  }
  if (!isFound) {
    print("Sorry, the book '$title' could not be found in the library.");
  }
  if (soldOut) {
    bookList.removeWhere((deletedBook) => deletedBook.title == title);
  }
}