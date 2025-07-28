//! Create a class called Book with properties like title, author, and publication year. Add
//! methods to display the book’s details and a method to check if it’s over 10 years old

class Book {
  String title;
  String author;
  int pubYear;

  // Constructor
  Book(this.title, this.author, this.pubYear);

  // Method to display book details
  void displayDetails() {
    print('Title: $title');
    print('Author: $author');
    print('Publication Year: $pubYear');
  }

  // Method to check if the book is over 10 years old
  bool isOverTenYearsOld() {
    int currentYear = 2025;
    return (currentYear - pubYear) > 10;
  }
}

void main() {
  var b1 = Book('Book1', 'Rahul', 2010);
  b1.displayDetails();
  if (b1.isOverTenYearsOld()) {
    print('The book is over 10 years old.');
  } else {
    print('The book is not over 10 years old.');
  }
}
