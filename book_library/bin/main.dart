import 'package:book_library/classes.dart' as classes;
import 'dart:io';

void main(List<String> arguments) {
  bool isTerminated = false;
  while(!isTerminated){
    print("Please select an option from the menu below by entering the corresponding number:\n1.Query Books: \n2.Add New Book: \n3.Delete Book: \n4.Purchase: \n5.View Invoice: \n6.Edit Book Information: \n7.Display All Book Categories: \n8.Reporting: \n9.Terminate");
    int? userInput;
    
    try {
      userInput = int.parse(stdin.readLineSync()!);
    } catch(error) {
      //For an incorrect input type, userInput will be set to 0, triggering the default case.
      userInput = 0;
    }
    
    switch(userInput){
      //search
      case 1: {
        classes.Book ko = classes.Book();
        ko.queryBooks("Hogarth Press");
        ko.queryBooks("198414");
      }
      break;
      //add book
      case 2: {
      }
      break;
      //delete book
      case 3: {
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
