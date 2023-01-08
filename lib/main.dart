import 'package:flutter/material.dart';
import 'package:flutter_rest_app_template/app.dart';
import 'package:flutter_rest_app_template/utils/logger/delegates/analytics_delegate_impl.dart';
import 'package:flutter_rest_app_template/utils/logger/logger.dart';

void main() async {
  await Log.initialize();

  // Initialize analytics.
  WidgetsFlutterBinding.ensureInitialized();
  Log.setAnalyticsDelegate(MockAnalyticsDelegate());
  Log.i("Analytics initialized.");

  runApp(const MyAppProvider());
}
