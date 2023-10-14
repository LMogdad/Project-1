class Book {
  late int id;
  late String title;
  late String author;
  late String category;
  late int copies;
  late double price;
  
  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.category,
    required this.copies,
    required this.price
  });
  
  // Increase the number of copies of this book
  void addCopy() {
    copies++; 
  }

  // Decrease the number of copies of this book
  void deleteCopy() {
    copies--;
  }

  // Edit the title of this book
  void editTitle(String title){
    this.title = title;
  }

  // Edit the author of this book
  void editAuthor(String author){
    this.author = author;
  }

  // Edit the category of this book
  void editCategory(String category){
    this.category = category;
  }

  // Edit the number of copies of this book
  void editCopies(int copies){
    if(copies >= 0) {
      this.copies = copies;
    } else {
      print("The number of copies must be a non-negative number.");
    }
  }

  // Edit the price of this book
  void editPrise(double price){
    if(price > 0) {
      this.price = price;
    } else {
      print("The price cannot be less than 0.");
    }
  }

  // Purchase a specific number of copies of this book
  bool purchase(int copiesToPurchase) {
    if(copies - copiesToPurchase >= 0){
      copies -= copiesToPurchase;
      double totalCost = copiesToPurchase * price;
      print ("Purchased $copiesToPurchase copies of $title for $totalCost\$.");
      return true;
    } else {
      return false;
    }
  }
 
  // Print the details of this book
  void printBook() {
    print("ID: $id Title: $title Auther: $author Category: $category Copies: $copies Price: $price\$");
  }
}
