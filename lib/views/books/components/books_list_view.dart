import 'package:flutter/material.dart';
import 'package:flutter_rest_app_template/providers/books_provider.dart';
import 'package:flutter_rest_app_template/utils/error_widget.dart';
import 'package:flutter_rest_app_template/views/books/components/book_tile_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BookListView extends ConsumerWidget {
  const BookListView({Key? key}) : super(key: key);

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
            message: "Oops found an issue!",
            exception: error,
            onRetry: () => ref.refresh(booksProvider),
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
