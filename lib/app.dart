import 'package:flutter/material.dart';
import 'package:flutter_rest_app_template/providers/routing_provider.dart';
import 'package:flutter_rest_app_template/providers/theme_provider.dart';
import 'package:flutter_rest_app_template/utils/loader/loader.dart';
import 'package:flutter_rest_app_template/utils/logger/observers.dart';
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

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerConfig = ref.watch(routerConfigProvider);
    final theme = ref.watch(themeProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: routerConfig,
      theme: theme,
      builder: Loader.buildOverlay(),
    );
  }
}
