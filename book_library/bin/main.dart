import 'book.dart';
import 'data.dart';
import 'dart:io';
import 'query_list.dart';
import 'add_new_book.dart';
import 'delete_book.dart';

void main(List<String> arguments) {
  bool isTerminated = false;

  // Initialize bookList using the provided data
  List<Book> bookList = [];
  for (Map book in books) {
    bookList.add(Book(
      id: book["id"],
      title: book["title"],
      author: book["auther"],
      category: book["category"],
      copies: book["copies"],
      price: book["price"])
    );
  }

  int? userInput;

  while(!isTerminated){
    print(">---------------------------------------------------------<");
    print("Please select an option from the menu below by entering the corresponding number:");
    print("1. Query Books");
    print("2. Add New Book");
    print("3. Delete Book");
    print("4. Purchase");
    print("5. Edit Book Information");
    print("6. Display All Book Categories");
    print("7. Reporting");
    print("8. Terminate");
    
    try {
      userInput = int.parse(stdin.readLineSync()!);
    } catch(error) {
      //For an incorrect input type, userInput will be set to 0, triggering the default case.
      userInput = 0;
    }
    
    switch(userInput){
      case 1: 
        queryBooks(bookList);
        break;
      case 2: 
        addNewBook(bookList);
        break;
      case 3: 
        deleteBook(bookList);
        break;
      case 4:
        purchaseBook(bookList);
        break;
      case 5:
        editBookInformation(bookList);
        break;
      case 6:
        displayBookCategories(bookList);
        break;
      case 7:
        generateReport(bookList);
        break;
      case 8: 
        isTerminated = true;
        break;
      default: {
        print("Apologies, please re-enter an integer from the available options.");
      }
    }
  }
}
