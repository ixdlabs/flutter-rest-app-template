import 'package:flutter_rest_app_template/models/books/books.dart';
import 'package:flutter_rest_app_template/services/books/books_service.dart';

class BooksServiceImpl extends BooksService {
  @override
  Future<List<BooksModel>> fetchBooks({required String query}) async {
    await Future.delayed(const Duration(seconds: 2));
    return <BooksModel>[];
  }
}
