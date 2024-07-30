import 'package:example_app/models/books/books.dart';
import 'package:flutter/material.dart';

class BookTileView extends StatelessWidget {
  final BooksModel booksModel;

  const BookTileView({super.key, required this.booksModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(booksModel.title),
      subtitle: Text(booksModel.author.join(', ')),
      leading: Image.network(
        booksModel.coverImage,
        fit: BoxFit.contain,
      ),
    );
  }
}
