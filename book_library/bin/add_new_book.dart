import 'dart:io';
import 'book.dart';

void addNewBook(List<Book> bookList) {
  print("Please enter the title of the book: ");
  String? title = stdin.readLineSync() ?? "";
  bool isFound = false;
  for (var book in bookList) {
    if (book.title == title) {
      book.addCopy();
      isFound = true;
    }
  }
  if (!isFound) {
    print("The author: ");
    String? author = stdin.readLineSync() ?? "";
    print("The category: ");
    String? category = stdin.readLineSync() ?? "";
    print("The price: \$");
    double price = 0;
    bool isCorrect = false;
    while (!isCorrect) {
      try {
        price = double.parse(stdin.readLineSync()!);
        isCorrect = true;
      } catch (error) {
        print("The price must be a number: \$");
      }
    }
    bookList.add(Book(
      id: bookList.last.id + 1,
      title: title,
      author: author,
      category: category,
      copies: 1,
      price: price,
    ));
    print("$title has been added");
  }
}