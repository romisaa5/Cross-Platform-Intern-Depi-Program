/*Create a class called Book with the following properties:
title (String)
author (String)
year (int)
rating (double?) // nullable
Add a constructor to initialize all properties.
Add a method displayInfo() to print book details.
Use null safety when printing rating.
 */
class Book {
  String title;
  String author;
  int year;
  double? rating; 

  Book(this.title, this.author, this.year, [this.rating]);
  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Year: $year');
    if (rating != null) {
      print('Rating: $rating');
    } else {
      print('Rating: Not rated yet');
    }
  }
}

void main() {
  Book book1 = Book('1984', 'George Orwell', 1949, 4.5);
  book1.displayInfo();

  Book book2 = Book('To Kill a Mockingbird', 'Harper Lee', 1960);
  book2.displayInfo();
}