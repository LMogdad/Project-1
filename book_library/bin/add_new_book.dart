import 'dart:io';
import 'book.dart';

void addNewBook(List<Book> bookList) {
  print("Please enter the title of the book: ");
  String? title = stdin.readLineSync() ?? "";
  bool isFound = false;

  // Check if the book already exists in the library
  for (var book in bookList) {
    if (book.title == title) {
      book.addCopy(); // If the book exists, increase the copy count
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
    
    // Add the new book to the library
    bookList.add(Book(
      id: bookList.last.id + 1,
      title: title,
      author: author,
      category: category,
      copies: 1,
      price: price,
    ));
  }
  // Confirm that the book has been added
  print("$title has been added to the library.");
}