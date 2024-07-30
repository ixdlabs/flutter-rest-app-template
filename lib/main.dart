import 'package:example_app/app.dart';
import 'package:example_app/utils/logger/delegates/analytics_delegate_impl.dart';
import 'package:example_app/utils/logger/logger.dart';
import 'package:flutter/material.dart';

void main() async {
  await Log.initialize();

  // Initialize analytics.
  WidgetsFlutterBinding.ensureInitialized();
  Log.setAnalyticsDelegate(NoOpAnalyticsDelegate());
  Log.i('Analytics initialized.');

  runApp(const MyAppProvider());
}
