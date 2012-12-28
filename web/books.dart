import 'dart:html';
import 'package:books/models.dart';

List<Book> books = [];

// binding created auto-magically!
void createNewBook() {
  var input = query("#new-book");
  books = [(new Book(input.value))]..addAll(books);
  input.value = "";
}
  
main() {
  ["War and Peace", "The Idiot", "Crime and Punishment"].forEach((title) {
    books.add(new Book(title));
  });
} 