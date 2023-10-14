import 'book.dart';

// Function to display book categories and titles within each category
void displayBookCategories(List<Book> bookList) {
  // Create a set to collect unique categories
  Set categories = {};
  for (var book in bookList) {
    categories.add(book.category);    
  }
  for (var category in categories) {
    print("Category: $category");
    List<Book> categoryBooks = bookList.where((book) => book.category == category).toList();
    for (var book in categoryBooks) {
      print("- ${book.title}");
    }
    print(">---------------------<");
  }
}