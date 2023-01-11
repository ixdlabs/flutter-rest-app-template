import 'package:dio/dio.dart';
import 'package:flutter_rest_app_template/models/books/books.dart';
import 'package:flutter_rest_app_template/services/books/books_service.dart';

class BooksServiceImpl extends BooksService {
  @override
  Future<List<BooksModel>> fetchBooks({required String query}) async {
    try {
      Dio dio = Dio();
      final response = await dio.get(
        'http://openlibrary.org/search.json?q=$query&limit=10',
      );
      final results = response.data['docs'] as List;
      List<BooksModel> fetchBooks = [];
      for (var result in results) {
        final bookTitle = result['title'];
        final bookAuthors = List<String>.from(result['author_name']);
        final int bookCoverId = result['cover_i'] ?? 0;
        final bookCover =
            "https://covers.openlibrary.org/b/id/$bookCoverId-M.jpg";

        fetchBooks.add(
          BooksModel(
            title: bookTitle,
            author: bookAuthors,
            coverImage: bookCover,
          ),
        );
      }
      return fetchBooks;
    } catch (e) {
      throw Exception(e);
    }
  }
}
