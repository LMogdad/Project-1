class Book {
  late int id;
  late String title;
  late String auther;
  late String category;
  late int copies;
  late double price;
  
  Book({required this.id, required this.title, required this.auther, required this.category, required this.copies, required this.price});
  
  void addNewBook() {
    copies++; 
  }

  void deleteBook() {
    copies--;
  }

  void editBookInfo() {

  }

  void purchase() {

  }

  void displayAllBookCategories() {

  }

  printBook() {
    print("ID: $id Title: $title Auther: $auther Category: $category Copies: $copies Price: $price\$");
  }
}
