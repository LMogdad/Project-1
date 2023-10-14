import 'dart:io';
import 'book.dart';

void addNewBook(List<Book> bookList) {
  print("Please enter the title of the book: ");
  String? title = stdin.readLineSync() ?? "";
  bool isFound = false;

  // Check if the book already exists in the library
  for (var book in bookList) {
    if (book.title == title) {
      print("Enter the number of copies you want to add:");
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
      book.addCopy(copies); // If the book exists, increase the copy count
      isFound = true;
    }
  }
  if (!isFound) {
    print("Please enter the author: ");
    String? author = stdin.readLineSync() ?? "";
    print("Please enter the category: ");
    String? category = stdin.readLineSync() ?? "";
    print("Please enter the price: \$");
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

    print("Enter the number of copies you want to add:");
    late int copies;
    isCorrect = false;
    while (!isCorrect) {
      try {
        copies = int.parse(stdin.readLineSync()!);
        isCorrect = true;
      } catch (error) {
        print("The number of copies must be a number.");
      }
    }
    
    // Add the new book to the library
    bookList.add(Book(
      id: bookList.last.id + 1,
      title: title,
      author: author,
      category: category,
      copies: copies,
      price: price,
    ));
  }
  
  // Confirm that the book has been added
  print("$title has been added to the library.");
}