import 'package:example_app/utils/logger/delegates/analytics_delegate.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

/// A singleton logger class.
///
/// This class is a wrapper around the [Logger] class from the `logger` package.
/// It is possible to attach an [AnalyticsDelegate] to this logger, which will
/// be used to log analytics events.
class Log {
  static late final Log _instance;

  final Logger? logger;
  AnalyticsDelegate? analyticsDelegate;

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

  static void setAnalyticsDelegate(AnalyticsDelegate analyticsDelegate) {
    _instance.analyticsDelegate = analyticsDelegate;
    Log.i('Analytics delegate set to $analyticsDelegate}.');
  }

  /// Logs a message at the [Level.trace] level.
  static void t(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _instance.logger?.t(message, error: error, stackTrace: stackTrace);
  }

  /// Logs a message at the [Level.debug] level.
  static void d(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _instance.logger?.d(message, error: error, stackTrace: stackTrace);
  }

  /// Logs a message at the [Level.info] level.
  static void i(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _instance.logger?.i(message, error: error, stackTrace: stackTrace);
  }

  /// Logs a message at the [Level.warning] level.
  static void w(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _instance.logger?.w(message, error: error, stackTrace: stackTrace);
  }

  /// Logs a message at the [Level.error] level.
  static void e(dynamic message,
      [dynamic error, StackTrace? stackTrace]) async {
    _instance.logger?.e(message, error: error, stackTrace: stackTrace);
    if (error != null && stackTrace != null) {
      await _instance.analyticsDelegate
          ?.recordError(error, stackTrace, reason: message);
    }
  }

  /// Logs a message at the [Level.fatal] level.
  static void f(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _instance.logger?.f(message, error: error, stackTrace: stackTrace);
  }

  /// Logs a analytics event.
  static void a(String name, [Map<String, Object?>? parameters]) async {
    _instance.logger?.i('Analytics [$name] Parameters:  $parameters');
    await _instance.analyticsDelegate?.recordAnalytic(name, parameters);
  }
}

class _MainAppLogPrinter extends LogPrinter {
  final devPrinter = PrettyPrinter(
    methodCount: 0,
    stackTraceBeginIndex: 1,
    noBoxingByDefault: true,
    printEmojis: true,
  );

  @override
  List<String> log(LogEvent event) {
    if (!kReleaseMode) return devPrinter.log(event);
    return ['${event.level.name} [${DateTime.now()}]: ${event.message}'];
  }
}
