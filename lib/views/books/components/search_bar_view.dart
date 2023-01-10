import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_rest_app_template/providers/books_provider.dart';
import 'package:flutter_rest_app_template/providers/pages/search_books_provider.dart';
import 'package:flutter_rest_app_template/utils/logger/logger.dart';
import 'package:flutter_rest_app_template/utils/messenger_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchBarView extends ConsumerWidget {
  const SearchBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchBooksTextFieldKey = ref.watch(searchBooksTextFieldKeyProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 12.0,
      ),
      child: FormBuilderTextField(
        key: searchBooksTextFieldKey,
        //onSubmitted: () {},
        name: "Search",
        decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }

  Future<void> handleSearchSubmission(
      BuildContext context, WidgetRef ref, String text) async {
    final booksList = ref.read(booksServiceProvider);
    final messenger = context.messenger;
    final searchBooksTextFieldKey = ref.read(searchBooksTextFieldKeyProvider);

    final searchQuery = searchBooksTextFieldKey.currentState;
    if (searchQuery == null) return;

    // Show loader
    messenger.showLoader();

    // Search books
    final String text = searchQuery.value["text"] ?? "";
    Log.i("Search query: $searchQuery");

    // Stop loader
    messenger.dismissLoader();

    return;
  }
}
