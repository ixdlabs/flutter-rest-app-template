import 'package:flutter/material.dart';
import 'package:flutter_rest_app_template/logger/observers.dart';
import 'package:flutter_rest_app_template/services/routing/routing_service.dart';
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
          path: '/',
          builder: (context, state) => const Placeholder(),
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
