import 'book.dart';
import 'data.dart';
import 'dart:io';

void main(List<String> arguments) {
  bool isTerminated = false;
  List<Book> bookList = [];
  for (Map book in books) {
    bookList.add(Book(id: book["id"], title: book["title"], auther: book["auther"], category: book["category"], copies: book["copies"], price: book["price"]));
  }
  int? userInput;

  while(!isTerminated){
    print(">---------------------------------------------------------<");
    print("Please select an option from the menu below by entering the corresponding number:\n1.Query Books: \n2.Add New Book: \n3.Delete Book: \n4.Purchase: \n5.View Invoice: \n6.Edit Book Information: \n7.Display All Book Categories: \n8.Reporting: \n9.Terminate");
    
    try {
      userInput = int.parse(stdin.readLineSync()!);
    } catch(error) {
      //For an incorrect input type, userInput will be set to 0, triggering the default case.
      userInput = 0;
    }
    
    switch(userInput){
      case 1: {
        print("Enter the title, auther or the category of the book: ");
        String? searchKey = stdin.readLineSync() ?? "";
        bool isFound = false;
        for (var book in bookList) {
          if(book.title == searchKey || book.auther == searchKey || book.category == searchKey){
            book.printBook();
            isFound = true;
          }
        }
        if(!isFound){
          print("Sorry, the book could not be found.");
        }
      }
      break;
      //add book
      case 2: {
        print("Please enter the title of the book: ");
        String? title = stdin.readLineSync() ?? "";
        bool isFound = false;
        for (var book in bookList) {
          if(book.title == title){
            book.addNewBook();
            isFound = true;
          }
        }
        if(!isFound){
          print("The auther: ");
          String? auther = stdin.readLineSync() ?? "";
          print("The category: ");
          String? category = stdin.readLineSync() ?? "";
          print("The price: \$");
          double price = 0;
          bool isCorrect = false;
          while(!isCorrect) {
            try {
              price = double.parse(stdin.readLineSync()!);
              isCorrect = true;
            } catch(error) {
              print("The price must be number: \$");
            }
          }
          bookList.add(Book(id: bookList[bookList.length-1].id + 1, title: title, auther: auther, category: category, copies: 1, price: price));
        }
      print("$title has been added");
      }
      break;
      //delete book
      case 3: {
        print("Please enter the title of the book: ");
        String? title = stdin.readLineSync() ?? "";
        bool isFound = false;
        bool soldOut = false;
        for (var book in bookList) {
          if(book.title == title){
            book.deleteBook();
            if(book.copies == 0){
              soldOut = true;
            }
            isFound = true;
            print("$title has been deleted");
          }
        }
        if(!isFound){
          print("Sorry, the book could not be found.");
        }
        if(soldOut) {
          bookList.removeWhere((deletedBook) => deletedBook.title == title);
        }
      }
      break;
      //Purchase
      case 4: {
      }
      break;
      //Invoice
      case 5: {
      }
      break;
      //Editing
      case 6: {
      }
      break;
      //Display all Book Categories
      case 7: {
      }
      break;
      //Reporting
      case 8: {
      }
      break;
      //Terminated
      case 9: {
      isTerminated = true;
      }
      break;
      
      default: {
        print("Apologies, please re-enter an integer from the available options.");
      }
    }
  }
}
