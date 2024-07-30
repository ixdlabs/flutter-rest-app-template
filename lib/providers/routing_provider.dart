import 'package:example_app/router.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// A provider that provides navigator key.
final navigatorKeyProvider = Provider((ref) {
  return GlobalKey<NavigatorState>();
}, name: 'navigator_key_provider');

final routerProvider = Provider<AppRouter>((ref) {
  final navigatorKey = ref.watch(navigatorKeyProvider);
  return GoRouterBasedAppRouter(navigatorKey: navigatorKey);
}, name: 'router_service_provider');

final routerConfigProvider = Provider<RouterConfig<Object>>((ref) {
  final routingService = ref.watch(routerProvider);
  return routingService.buildConfig();
}, name: 'router_config_provider');
