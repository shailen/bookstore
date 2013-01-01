import 'dart:html';
import 'package:bookstore/models.dart';

List<Book> books = [];

// binding created auto-magically!
void createNewBook() {
  var input = query("#new-book");
  books.add(new Book(input.value));
  input.value = "";
}
  
main() {
  // create some data so the page doesn't look empty
  ["War and Peace", "The Idiot", "Crime and Punishment"].forEach((title) {
    books.add(new Book(title));
  });
} 
