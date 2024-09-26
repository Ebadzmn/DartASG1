class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead;
  static int totalBooks = 0;


  Book(this.title, this.author, this.publicationYear, this.pagesRead) {
    totalBooks++;
  }


  void read(int pages) {
    pagesRead += pages;
  }


  int getPagesRead() {
    return pagesRead;
  }


  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }

  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main() {
  // Creating three Book objects
  Book book1 = Book('BOOK2', 'AUTH1', 1949, 0);
  Book book2 = Book('BOOK2', 'AUTH2', 1960, 0);
  Book book3 = Book('TBOOK2', 'AUTH3. SDDD', 1925, 0);

  // Simulating reading pages for each book
  book1.read(100);
  book2.read(50);
  book3.read(200);

  // Displaying the information for each book
  print('Book 1: ${book1.getTitle()} by ${book1.getAuthor()}');
  print('Publication Year: ${book1.getPublicationYear()}');
  print('Pages Read: ${book1.getPagesRead()}');
  print('Book Age: ${book1.getBookAge()} years old\n');

  print('Book 2: ${book2.getTitle()} by ${book2.getAuthor()}');
  print('Publication Year: ${book2.getPublicationYear()}');
  print('Pages Read: ${book2.getPagesRead()}');
  print('Book Age: ${book2.getBookAge()} years old\n');

  print('Book 3: ${book3.getTitle()} by ${book3.getAuthor()}');
  print('Publication Year: ${book3.getPublicationYear()}');
  print('Pages Read: ${book3.getPagesRead()}');
  print('Book Age: ${book3.getBookAge()} years old\n');

  // Displaying the total number of books created
  print('Total number of books created: ${Book.totalBooks}');
}
