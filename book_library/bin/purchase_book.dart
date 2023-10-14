import 'book.dart';
import 'dart:io';

void purchaseBook(List<Book> bookList) {
  print("Please enter the title of the book to purchase: ");
  String? title = stdin.readLineSync() ?? "";
  bool isFound = false;
  bool soldOut = false;
  bool isPurchased;
  late int copies;
  for (var book in bookList) {
    if (book.title == title) {
      bool isCorrect = false;
      print("enter the number of coppies you want: ");
      while (!isCorrect) {
        try {
          copies = int.parse(stdin.readLineSync()!);
          isCorrect = true;
        } catch (error) {
          print("The copies must be a number:");
        }
      }
      isPurchased = book.purchase(copies);
      if (book.copies == 0) {
        soldOut = true;
      }
      isFound = true;
      if(isPurchased){
        print("$title has been purchased");
      } else {
        print("not enougth coppies");
      }
    }
  }
  if (!isFound) {
    print("Sorry, the book could not be found.");
  }
  if (soldOut) {
    bookList.removeWhere((deletedBook) => deletedBook.title == title);
  }
}