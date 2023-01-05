import 'package:flutter/widgets.dart';
import 'package:flutter_rest_app_template/logger/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// An observer for [ProviderScope] that logs events happening for providers.
class AppProviderObserver extends ProviderObserver {
  String getName(ProviderBase provider) {
    if (provider.name != null) return provider.name!;
    Log.w("Provider name not provided. Provider: $provider");
    return provider.runtimeType.toString();
  }

  @override
  void didAddProvider(
      ProviderBase provider, Object? value, ProviderContainer container) {
    Log.d('Provider added: ${getName(provider)}');
  }

  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    final name = getName(provider);
    if (name.endsWith(":hidden")) return;
    Log.d("[$name] updated to $newValue");
  }

  @override
  void providerDidFail(ProviderBase provider, Object error,
      StackTrace stackTrace, ProviderContainer container) {
    Log.e("[${getName(provider)}] $error");
  }
}

/// An observer for [Navigator] that logs push events.
class AppNavigationObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    Log.d("Pushed Route ${route.settings.name}");
  }
}
