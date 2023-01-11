import 'package:flutter/material.dart';
import 'package:flutter_rest_app_template/models/books/books.dart';

class BookTileView extends StatelessWidget {
  final BooksModel booksModel;

  const BookTileView({Key? key, required this.booksModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(booksModel.title),
      subtitle: Text(booksModel.author.join(", ")),
      leading: Image.network(
        booksModel.coverImage,
        fit: BoxFit.contain,
      ),
    );
  }
}
