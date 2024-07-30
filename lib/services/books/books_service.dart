import 'package:example_app/models/books/books.dart';

abstract class BooksService {
  Future<List<BooksModel>> fetchBooks({required String query});
}
