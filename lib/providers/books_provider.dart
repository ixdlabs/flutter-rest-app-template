import 'package:flutter_rest_app_template/models/books/books.dart';
import 'package:flutter_rest_app_template/services/books/books_service.dart';
import 'package:flutter_rest_app_template/services/books/books_service_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final booksProvider = FutureProvider.autoDispose<List<BooksModel>>((ref) async {
  final booksService = ref.watch(booksServiceProvider);
  final books = await booksService.fetchBooks();
  return books;
}, name: "books_provider");

final booksServiceProvider = Provider<BooksService>((ref) {
  return BooksServiceImpl();
}, name: "books_service_provider");
