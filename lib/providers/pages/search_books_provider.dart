import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchBooksTextFieldKeyProvider = Provider.autoDispose((ref) {
  return GlobalKey<FormBuilderState>();
}, name: "search_books_text_field_key_provider");