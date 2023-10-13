class Book {
  late int id;
  late String bookName;
  late String auther;
  late String category;
  late int numberOfCopies;
  late double price;
  static late List<Map> books = [
  {"id":10001, "bookName":"The Catcher in the Rye", "auther":"Little, Brown and Company", "category":"", "numberOfCopies": 8, "price":15.99},
  {"id":10002, "bookName":"To Kill a Mockingbird", "auther":"J. B. Lippincott & Co.", "category":"", "numberOfCopies": 11, "price":12.99},
  {"id":10003, "bookName":"The Great Gatsby", "auther":"Charles Scribner's Sons", "category":"", "numberOfCopies": 6, "price":10.99},
  {"id":10004, "bookName":"Pride and Prejudice", "auther":"Thomas Egerton", "category":"", "numberOfCopies": 9, "price":8.99},
  {"id":10005, "bookName":"1984", "auther":"Secker & Warburg", "category":"", "numberOfCopies": 12, "price":14.99},
  {"id":10006, "bookName":"To the Lighthouse", "auther":"Hogarth Press", "category":"", "numberOfCopies": 3, "price":11.99}];

  //Book(this.id, this.bookName, this.auther, this.category, this.year, this.numberOfK, this.price){}

  void queryBooks(String searchKey) {
    List searchList = books.where((book) => book["bookName"] == searchKey || book["auther"] == searchKey || book["category"] == searchKey).toList();
    if(searchList.isNotEmpty) {
      print(searchList);
    } else {
      print("Sorry, the book could not be find.");
    }
  }
  
  void addNewBook() {

  }

  void deleteBook() {

  }

  void editBookInfo() {

  }

  void purchase() {

  }

  void displayAllBookCategories() {

  }
}
