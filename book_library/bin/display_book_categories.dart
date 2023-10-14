import 'book.dart';

void displayBookCategories(List<Book> bookList) {
  Set categories = {};
  for (var book in bookList) {
    categories.add(book.category);    
  }
  for (var category in categories) {
    print("Category: $category");
    List<Book> categoryBooks = bookList.where((book) => book.category == category).toList();
    for (var book in categoryBooks) {
      print(book.title);
    }
    print(">---------------------<");
  }
}