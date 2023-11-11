import '../../../data/database/app_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // Observable list of books
  final _books = <Book>[].obs;
  List<Book> get books => _books;

  // Initialize the controller and load books on initialization
  @override
  void onInit() {
    super.onInit();
    loadBooks();
  }

// Asynchronously load books from the database
  Future<void> loadBooks() async {
    try {
      final books = await AppDatabase.instance.getBooks();
      _books.assignAll(books);
    } catch (e) {
      debugPrint('Error loading books: $e');
    }
  }

  // Get the name of a book by its ID
  String getBookName(int bookId) {
    String s = _books.firstWhere((book) => book.id == bookId).title!;
    return s;
  }

  // Get the abbreviation code of a book by its ID
  String getBookAbvr(int bookId) {
    String s = _books.firstWhere((book) => book.id == bookId).abvrCode!;
    return s;
  }

  // Get the color code of a book by its ID
  String getBookColorCode(int bookId) {
    String s = _books.firstWhere((book) => book.id == bookId).colorCode!;
    return s;
  }
}
