import 'package:flutter/material.dart';
import 'package:flutter_rest_app_template/services/routing/routing_service.dart';
import 'package:flutter_rest_app_template/services/routing/routing_service_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// A provider that provides navigator key.
final navigatorKeyProvider = Provider((ref) {
  return GlobalKey<NavigatorState>();
}, name: "navigator_key_provider");

final routingServiceProvider = Provider<RoutingService>((ref) {
  final navigatorKey = ref.watch(navigatorKeyProvider);

  return GoRouterRoutingService(
    navigatorKey: navigatorKey,
  );
}, name: "router_service_provider");

final routerConfigProvider = Provider<RouterConfig<Object>>((ref) {
  final routingService = ref.watch(routingServiceProvider);

  return routingService.buildConfig();
}, name: "router_config_provider");
