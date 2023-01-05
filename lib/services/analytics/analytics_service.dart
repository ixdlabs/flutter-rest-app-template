abstract class AnalyticsService {
  Future<void> recordError(Object error, StackTrace stackTrace,
      {required String reason});

  Future<void> recordAnalytic(String name, Map<String, Object?>? parameters);
}
