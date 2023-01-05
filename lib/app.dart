import 'package:flutter/material.dart';
import 'package:flutter_rest_app_template/logger/observers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyAppProvider extends StatelessWidget {
  const MyAppProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [AppProviderObserver()],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
