import 'package:example_app/views/books/components/books_list_view.dart';
import 'package:example_app/views/books/components/page_title_view.dart';
import 'package:example_app/views/books/components/search_bar_view.dart';
import 'package:flutter/material.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageTitleView(),
            SearchBarView(),
            BookListView(),
          ],
        ),
      ),
    );
  }
}
