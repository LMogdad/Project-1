import 'book.dart';
import 'dart:io';

// Function to edit book information
void editBookInfo(List<Book> bookList) {
  print("Enter the title of the book you want to edit:");
  int? userInput;
  String? searchKey = stdin.readLineSync() ?? "";
  bool isFound = false;
  
  for (var book in bookList) {
    if (book.title == searchKey) {
      book.printBook(); // Display the book's current information
      print("Choose an option to edit:");
      print("1. Change title");
      print("2. Change author");
      print("3. Change category");
      print("4. Change number of copies");
      print("5. Change price");

      try {
        userInput = int.parse(stdin.readLineSync()!);
      } catch(error) {
        //For an incorrect input type, userInput will be set to 0, triggering the default case.
        userInput = 0;
      }
      isFound = true;
      switch(userInput) {
        case 1:
          print("Enter the new title:");
          String? title = stdin.readLineSync() ?? "";
          book.editTitle(title);
          break;
        case 2:
          print("Enter the new author:");
          String? author = stdin.readLineSync() ?? "";
          book.editAuthor(author);
          break;
        case 3:
          print("Enter the new category:");
          String? category = stdin.readLineSync() ?? "";
          book.editCategory(category);
          break;
        case 4:
          print("Enter the new number of copies:");
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
          book.editCopies(copies);
          break;
        case 5:
          print("Enter the new price:");
          late double price;
          bool isCorrect = false;
          while (!isCorrect) {
            try {
              price = double.parse(stdin.readLineSync()!);
              isCorrect = true;
            } catch (error) {
              print("The price must be a number:");
            }
          }
          book.editPrise(price);
          break;
        default:
      }
    }
  }
  if (!isFound) {
    print("Sorry, the book '$searchKey' could not be found in the library.");
  }
}