class Book {
  late int id;
  late String title;
  late String author;
  late String category;
  late int copies;
  late double price;
  
  Book({required this.id, required this.title, required this.author, required this.category, required this.copies, required this.price});
  
  void addCopy() {
    copies++; 
  }

  void deleteCopy() {
    copies--;
  }

  void editBookInfo() {

  }

  void purchase() {
    copies--;
  }

  void displayAllBookCategories() {

  }

  void printBook() {
    print("ID: $id Title: $title Auther: $author Category: $category Copies: $copies Price: $price\$");
  }

  void printInvoice() {
    print("ID: $id Title: $title Price: $price\$");
  }
}
