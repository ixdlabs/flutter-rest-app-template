import 'package:flutter_rest_app_template/utils/logger/delegates/analytics_delegate.dart';

class MockAnalyticsDelegate extends AnalyticsDelegate {
  @override
  Future<void> recordAnalytic(
      String name, Map<String, Object?>? parameters) async {}

  @override
  Future<void> recordError(Object error, StackTrace stackTrace,
      {required String reason}) async {}
}
