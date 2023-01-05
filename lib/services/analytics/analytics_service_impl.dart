import 'package:flutter_rest_app_template/services/analytics/analytics_service.dart';

class MockAnalyticsService extends AnalyticsService {
  @override
  Future<void> recordAnalytic(
      String name, Map<String, Object?>? parameters) async {}

  @override
  Future<void> recordError(Object error, StackTrace stackTrace,
      {required String reason}) async {}
}
