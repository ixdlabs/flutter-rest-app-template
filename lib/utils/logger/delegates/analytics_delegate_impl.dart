import 'package:example_app/utils/logger/delegates/analytics_delegate.dart';

/// A sample implementation of the [AnalyticsDelegate] interface.
/// This implementation does not send any analytics events.
class NoOpAnalyticsDelegate extends AnalyticsDelegate {
  @override
  Future<void> recordAnalytic(
      String name, Map<String, Object?>? parameters) async {}

  @override
  Future<void> recordError(Object error, StackTrace stackTrace,
      {required String reason}) async {}
}
