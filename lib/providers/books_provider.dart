import 'package:example_app/models/books/books.dart';
import 'package:example_app/services/books/books_service.dart';
import 'package:example_app/services/books/books_service_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final booksServiceProvider = Provider<BooksService>((ref) {
  return BooksServiceImpl();
}, name: 'books_service_provider');

final searchQueryProvider = StateProvider.autoDispose<String>((ref) => '',
    name: 'search_query_provider');

final booksProvider = FutureProvider.autoDispose<List<BooksModel>>((ref) async {
  final booksService = ref.watch(booksServiceProvider);
  final searchQuery = ref.watch(searchQueryProvider);
  final books = await booksService.fetchBooks(query: searchQuery);
  return books;
}, name: 'books_provider');
