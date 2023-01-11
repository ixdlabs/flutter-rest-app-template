import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_rest_app_template/providers/books_provider.dart';
import 'package:flutter_rest_app_template/utils/loader/loader.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchBarView extends HookConsumerWidget {
  const SearchBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchBarController = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 12.0,
      ),
      child: TextField(
        controller: searchBarController,
        onSubmitted: (value) {
          if (value.isNotEmpty) {
            ref.read(searchQueryProvider.notifier).state = value;
          } else {
            Loader.showErrorMessage("Please enter a search term");
          }
        },
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
}
