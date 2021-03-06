// Auto-generated from books.html.
// DO NOT EDIT.

library books_html;

import 'dart:html' as autogenerated_html;
import 'dart:web_audio' as autogenerated_audio;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;

import 'dart:html';

import 'package:bookstore/models.dart';

import 'book_component.dart';


// Original code
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


// Additional generated code
/** Create the views and bind them to models. */
void init_autogenerated() {
  var _root = autogenerated_html.document.body;
  autogenerated_html.InputElement __newBook;
  
  autogenerated_html.ButtonElement __e0;
  
  autogenerated_html.EventListener __listener__e0_click_1;
  
  autogenerated_html.UListElement __books;
  
  autogenerated_html.UnknownElement __e2;
  
  List<autogenerated.WatcherDisposer> __stoppers2;
  
  List<Function> _removeChild__e2 = [];
  
  autogenerated_html.Node _endPosition__e2;
  


  // Initialize fields.
  __newBook = _root.query('#new-book');
  __e0 = _root.query('#__e-0');
  __books = _root.query('#books');
  __e2 = __books.query('#__e-2');
  __stoppers2 = [];
  

  // Attach model to views.
  __listener__e0_click_1 = ($event) {
    createNewBook();
    autogenerated.dispatch();
  };
  __e0.on.click.add(__listener__e0_click_1);
  
  _endPosition__e2 = __e2;
  
  __stoppers2.add(autogenerated.watchAndInvoke(() => books, (_) {
    for (var remover in _removeChild__e2) remover();
    _removeChild__e2.clear();
    
    _endPosition__e2 = autogenerated.removeNodes(__e2, _endPosition__e2);
    
    var __insert___e2 = __e2.nextNode;
    
    for (var book in books) {
      
      autogenerated_html.UnknownElement __e1;
      List<autogenerated.WatcherDisposer> __stoppers3_1;
      
      __e1 = new autogenerated_html.Element.tag('x-book-item');
      __stoppers3_1 = [];
      new BookComponent.forElement(__e1)
      ..created_autogenerated()
      ..created()
      ..composeChildren();
      
      autogenerated.insertAllBefore(__e2.parentNode, __insert___e2,
      
      [new autogenerated_html.Text('\n        '), __e1, _endPosition__e2 = new autogenerated_html.Text('\n      ')]);
      
      __stoppers3_1.add(autogenerated.watchAndInvoke(() =>  book , (__e) { __e1.xtag.book = __e.newValue; }));
      __e1.xtag..inserted()
      ..inserted_autogenerated();
      
      _removeChild__e2.add(() {
        
        __e1.xtag..removed_autogenerated()
        ..removed();
        (__stoppers3_1..forEach((s) => s())).clear();
        __e1 = null;
        
      });
    }
  }));
  

}
