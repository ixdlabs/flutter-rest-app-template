import 'package:flutter/material.dart';
import 'package:flutter_rest_app_template/views/books/components/books_list_view.dart';
import 'package:flutter_rest_app_template/views/books/components/page_title_view.dart';
import 'package:flutter_rest_app_template/views/books/components/search_bar_view.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            PageTitleView(),
            SearchBarView(),
            BookListView(),
          ],
        ),
      ),
    );
  }
}
