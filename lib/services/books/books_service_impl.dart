import 'package:dio/dio.dart';
import 'package:example_app/models/books/books.dart';
import 'package:example_app/services/books/books_service.dart';

class BooksServiceImpl extends BooksService {
  @override
  Future<List<BooksModel>> fetchBooks({required String query}) async {
    try {
      Dio dio = Dio();

      final response = await dio.get(
        'http://openlibrary.org/search.json',
        queryParameters: {'q': query, 'limit': 10},
      );
      final searchResults = response.data['docs'] as List;

      List<BooksModel> books = [];
      for (var result in searchResults) {
        final bookId = result['key'];
        final bookTitle = result['title'];
        final bookAuthors = List<String>.from(result['author_name']);
        final int bookCoverId = result['cover_i'] ?? 0;
        final bookCover =
            'https://covers.openlibrary.org/b/id/$bookCoverId-M.jpg';

        books.add(
          BooksModel(
            id: bookId,
            title: bookTitle,
            author: bookAuthors,
            coverImage: bookCover,
          ),
        );
      }

      return books;
    } catch (e) {
      throw Exception(e);
    }
  }
}
