import 'package:flutte_rest_app_template/utils/logger.dart';
import 'package:flutte_rest_app_template/utils/router/app_router.dart';
import 'package:flutte_rest_app_template/utils/theme/app_theme_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  Log.initialize();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.instance.themeData,
      routerConfig: AppRouter.routes,
      builder: EasyLoading.init(builder: (_, child) => child!),
    );
  }
}
