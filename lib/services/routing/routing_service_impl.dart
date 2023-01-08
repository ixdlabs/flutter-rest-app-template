import 'package:flutter/material.dart';
import 'package:flutter_rest_app_template/pages/home/home_page.dart';
import 'package:flutter_rest_app_template/pages/splash/splash_page.dart';
import 'package:flutter_rest_app_template/services/routing/routing_service.dart';
import 'package:flutter_rest_app_template/utils/logger/observers.dart';
import 'package:go_router/go_router.dart';

class GoRouterRoutingService extends RoutingService {
  final GlobalKey<NavigatorState> navigatorKey;

  GoRouterRoutingService({
    required this.navigatorKey,
  });

  @override
  RouterConfig<Object> buildConfig() {
    return GoRouter(
      navigatorKey: navigatorKey,
      initialLocation: '/splash',
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
