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

  void editTitle(String title){
    this.title = title;
  }

  void editAuthor(String author){
    this.author = author;
  }

  void editCategory(String category){
    this.category = category;
  }

  void editCopies(int copies){
    if(copies >= 0) {
      this.copies = copies;
    } else {
      print("cannot be less than 0");
    }
  }

  void editPrise(double price){
    if(price > 0) {
      this.price = price;
    } else {
      print("cannot be less than 0");
    }
  }

  bool purchase(int copies) {
    if(this.copies - copies >= 0){
      this.copies -= copies;
      print ("total cost: ${copies * price}\$");
      return true;
    } else {
      return false;
    }
  }

  void printBook() {
    print("ID: $id Title: $title Auther: $author Category: $category Copies: $copies Price: $price\$");
  }
}
