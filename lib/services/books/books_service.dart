import 'package:flutter_rest_app_template/models/books/books.dart';

abstract class BooksService {
  Future<List<BooksModel>> fetchBooks({required String query});
}
