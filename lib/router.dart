import 'package:flutter/material.dart';
import 'package:flutter_rest_app_template/utils/logger/observers.dart';
import 'package:flutter_rest_app_template/views/books/books_page.dart';
import 'package:flutter_rest_app_template/views/home/home_page.dart';
import 'package:flutter_rest_app_template/views/splash/splash_page.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  RouterConfig<Object> buildConfig();
}

class GoRouterBasedAppRouter implements AppRouter {
  final GlobalKey<NavigatorState> navigatorKey;

  GoRouterBasedAppRouter({required this.navigatorKey});

  @override
  RouterConfig<Object> buildConfig() {
    return GoRouter(
      navigatorKey: navigatorKey,
      initialLocation: '/books',
      observers: [AppNavigationObserver()],
      redirect: redirect,
      routes: [
        GoRoute(
          path: '/splash',
          builder: (context, state) => const SplashPage(),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/books',
          builder: (context, state) => const BooksPage(),
        ),
      ],
    );
  }

  /// Put custom redirect logic here.
  /// Current route is accessible via `state.location`.
  /// Returning null will result in continuing to the same page.
  /// Returning a string will result in redirecting to the specified page.
  String? redirect(BuildContext context, GoRouterState state) {
    return null;
  }
}
