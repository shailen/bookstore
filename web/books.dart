import 'dart:html';
import 'package:bookstore/models.dart';

List<Book> books = [];

// binding created auto-magically!
void createNewBook() {
  var input = query("#new-book");
  // books = [(new Book("${input.value}..."))]..addAll(books); // this triggers a change in the dom
  books.add(new Book(input.value));
  input.value = "";
}
  
main() {
  ["War and Peace", "The Idiot", "Crime and Punishment"].forEach((title) {
    books.add(new Book(title));
  });
} 