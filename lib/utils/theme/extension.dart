import 'package:flutter/material.dart'
    show BuildContext, ColorScheme, TextTheme, Theme, ThemeData;
import 'package:flutter/widgets.dart' show MediaQuery;

/// An extension on [BuildContext] to provide convenient access to theme-related properties.
///
/// This extension allows you to easily access the current [ThemeData], [ColorScheme],
/// and [TextTheme] from the [BuildContext].
///
/// Example usage:
/// ```dart
/// final theme = context.theme;
/// final colorScheme = context.colorScheme;
/// final textTheme = context.textTheme;
/// ```
extension ThemeExtension on BuildContext {
  /// Get the current [ThemeData] from the [BuildContext].
  ThemeData get theme => Theme.of(this);

  /// Get the [ColorScheme] from the current [ThemeData].
  ColorScheme get colorScheme => theme.colorScheme;

  /// Get the [TextTheme] from the current [ThemeData].
  TextTheme get textTheme => theme.textTheme;

  /// Get the current width of the screen.
  double get width => MediaQuery.sizeOf(this).width;

  /// Get the current height of the screen.
  double get height => MediaQuery.sizeOf(this).height;

  /// Get the bottom padding of the screen.
  double get bottom =>
      MediaQuery.viewPaddingOf(this).bottom > 0
          ? MediaQuery.viewPaddingOf(this).bottom
          : MediaQuery.viewInsetsOf(this).bottom;
}
