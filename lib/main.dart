import 'package:flutter/material.dart';
import 'package:flutter_rest_app_template/app.dart';
import 'package:flutter_rest_app_template/logger/logger.dart';
import 'package:flutter_rest_app_template/services/analytics/analytics_service_impl.dart';

void main() async {
  await Log.initialize();

  // Initialize analytics.
  WidgetsFlutterBinding.ensureInitialized();
  Log.setAnalyticsServices(MockAnalyticsService());
  Log.i("Analytics initialized.");

  runApp(const MyAppProvider());
}
