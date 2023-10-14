import 'book.dart';

// Function to generate a report for all books in the library
void generateReport(List<Book> bookList) {
  double totalCost = 0;
  for (var book in bookList) {
    totalCost += book.report();
  }
  print("Total cost for all books is ${totalCost.toStringAsFixed(2)}\$");
}