import 'package:flutte_rest_app_template/screens/home/home_screen.dart';
import 'package:flutte_rest_app_template/screens/login/login_screen.dart';
import 'package:flutte_rest_app_template/screens/products/product_details_screen.dart';
import 'package:flutte_rest_app_template/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart' show GlobalKey, NavigatorState;
import 'package:go_router/go_router.dart';

final navigatorKey = GlobalKey<NavigatorState>();

/// TODO: Add your own logic to handle navigation and routing.
class AppRouter {
  static const splash = '/';

  static const login = '/login';

  static const home = '/home';

  static const productDetails = '$home/product-details';
  static const _productDetailsPath = 'product-details';

  static final routes = GoRouter(
    initialLocation: splash,
    navigatorKey: navigatorKey, // Use a global key for navigation
    routes: [
      GoRoute(path: splash, builder: (_, _) => const SplashScreen()),
      GoRoute(path: login, builder: (_, __) => const LoginScreen()),
      GoRoute(
        path: home,
        builder: (_, _) => const HomeScreen(),
        routes: [
          GoRoute(
            path: _productDetailsPath,
            name: productDetails,
            builder: (_, state) {
              final id = state.extra as int;
              return ProductDetailsScreen(id);
            },
          ),
        ],
      ),
    ],
  );
}
