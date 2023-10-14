import 'book.dart';
import 'dart:io';

void editBookInfo(List<Book> bookList) {
  print("Enter the title of the book:");
  int? userInput;
  String? searchKey = stdin.readLineSync() ?? "";
  bool isFound = false;
  for (var book in bookList) {
    if (book.title == searchKey) {
      book.printBook();
      print("chose menu");
      print("1.Change title");
      print("2.Change author");
      print("3.Change category");
      print("4.Change number of copies");
      print("5.Change price");
      try {
        userInput = int.parse(stdin.readLineSync()!);
      } catch(error) {
        //For an incorrect input type, userInput will be set to 0, triggering the default case.
        userInput = 0;
      }
      isFound = true;
      switch(userInput) {
        case 1:
          print("chose title");
          String? title = stdin.readLineSync() ?? "";
          book.editTitle(title);
          break;
        case 2:
          print("chose auther");
          String? author = stdin.readLineSync() ?? "";
          book.editAuthor(author);
          break;
        case 3:
          print("chose category");
          String? category = stdin.readLineSync() ?? "";
          book.editCategory(category);
          break;
        case 4:
          print("chose coppies");
          late int copies;
          bool isCorrect = false;
          while (!isCorrect) {
            try {
              copies = int.parse(stdin.readLineSync()!);
              isCorrect = true;
            } catch (error) {
              print("The coppies must be a number: \$");
            }
          }
          book.editCopies(copies);
          break;
        case 5:
          print("chose prise");
          late double price;
          bool isCorrect = false;
          while (!isCorrect) {
            try {
              price = double.parse(stdin.readLineSync()!);
              isCorrect = true;
            } catch (error) {
              print("The price must be a number: \$");
            }
          }
          book.editPrise(price);
          break;
        default:
      }
    }
  }
  if (!isFound) {
    print("Sorry, the book could not be found.");
  }
}