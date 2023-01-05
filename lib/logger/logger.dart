import 'package:flutter/foundation.dart';
import 'package:flutter_rest_app_template/services/analytics/analytics_service.dart';
import 'package:logger/logger.dart';

/// A singleton logger class.
/// Errors logs will be sent to crashlytics.
class Log {
  static late final Log _instance;
  final Logger? logger;
  AnalyticsService? analyticsService;

  Log._({this.logger});

  /// Initialize the logger.
  /// This method must be called before any other method.
  static Future<void> initialize({bool silent = false}) async {
    // Don't log anything below warnings in production.
    if (kReleaseMode) Logger.level = Level.warning;
    if (silent) {
      _instance = Log._();
    } else {
      final logger = Logger(printer: _MainAppLogPrinter());
      _instance = Log._(logger: logger);
    }
  }

  /// Set the firebase services to use.
  static void setAnalyticsServices(AnalyticsService analyticsService) {
    _instance.analyticsService = analyticsService;
    Log.i("Logging using firebase Crashlytics and Analytics.");
  }

  /// Logs a message at the [Level.verbose] level.
  static void v(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _instance.logger?.v(message, error, stackTrace);
  }

  /// Logs a message at the [Level.debug] level.
  static void d(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _instance.logger?.d(message, error, stackTrace);
  }

  /// Logs a message at the [Level.info] level.
  static void i(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _instance.logger?.i(message, error, stackTrace);
  }

  /// Logs a message at the [Level.warning] level.
  static void w(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _instance.logger?.w(message, error, stackTrace);
  }

  /// Logs a message at the [Level.error] level.
  static void e(dynamic message,
      [dynamic error, StackTrace? stackTrace]) async {
    _instance.logger?.e(message, error, stackTrace);
    if (error != null && stackTrace != null) {
      await _instance.analyticsService
          ?.recordError(error, stackTrace, reason: message);
    }
  }

  /// Logs a message at the [Level.wtf] level.
  static void wtf(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _instance.logger?.wtf(message, error, stackTrace);
  }

  /// Logs a analytics event.
  static void a(String name, [Map<String, Object?>? parameters]) async {
    _instance.logger?.i("Analytics [$name] Parameters:  $parameters");
    await _instance.analyticsService?.recordAnalytic(name, parameters);
  }
}

class _MainAppLogPrinter extends LogPrinter {
  final devPrinter = PrettyPrinter(
    methodCount: 0,
    stackTraceBeginIndex: 1,
    noBoxingByDefault: true,
  );

  @override
  List<String> log(LogEvent event) {
    if (!kReleaseMode) return devPrinter.log(event);
    return ["${event.level.name} [${DateTime.now()}]: ${event.message}"];
  }
}
