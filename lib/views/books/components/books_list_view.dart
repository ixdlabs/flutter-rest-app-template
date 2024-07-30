import 'package:example_app/providers/books_provider.dart';
import 'package:example_app/utils/error_widget.dart';
import 'package:example_app/views/books/components/book_tile_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BookListView extends ConsumerWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookListFuture = ref.watch(booksProvider);

    return Expanded(
      child: bookListFuture.when(
        data: (bookList) => ListView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: bookList.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: BookTileView(
              booksModel: bookList[index],
            ),
          ),
        ),
        error: (error, stack) => Center(
          child: ErrorMessageWidget(
            message: 'Oops found an issue!',
            exception: error,
            onRetry: () => ref.refresh(booksProvider),
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
