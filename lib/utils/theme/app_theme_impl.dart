import 'package:flutte_rest_app_template/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///TODO: Change the implementations as per your requirements.
class AppTheme extends ThemeConcrete {
  static final AppTheme instance = AppTheme._();
  AppTheme._();

  static const textFieldBorder = Color.fromRGBO(194, 194, 194, 1);
  static const bottomNavSelectedBackground = Color.fromRGBO(234, 244, 239, 1);

  static const inactiveSwitchBackground = Color.fromRGBO(217, 217, 217, 1);

  static const showMoreTextColor = Color.fromRGBO(57, 66, 235, 1);

  static const avatarBackground = Color.fromRGBO(219, 219, 219, 1);

  static const green = Color.fromRGBO(16, 165, 0, 1);
  static const lightGreen = Color.fromRGBO(135, 225, 103, 1);

  static const primary = Color.fromRGBO(34, 126, 71, 1);
  static const primaryBg = Color.fromRGBO(34, 126, 71, 0.2);
  static const primaryWithOpacity = Color.fromRGBO(224, 242, 228, 1);
  static const grey = Color.fromRGBO(98, 98, 98, 1);
  static const chipBg = Color.fromRGBO(243, 243, 243, 1);

  static const red = Color.fromRGBO(233, 84, 87, 1);

  static const yellow = Color.fromRGBO(255, 210, 9, 1);

  static const _warmBackground = Color.fromRGBO(255, 254, 249, 1);

  final _themeData = ThemeData.light().copyWith(
    primaryColor: primary,
    scaffoldBackgroundColor: _warmBackground,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primary,
    ).copyWith(surfaceTint: Colors.transparent),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.inter(
        fontWeight: FontWeight.w700,
        color: primary,
      ),

      bodyLarge: GoogleFonts.inter(
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.inter(
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      bodySmall: GoogleFonts.inter(fontWeight: FontWeight.w400, color: grey),
      titleLarge: GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      titleSmall: GoogleFonts.inter(
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      labelSmall: GoogleFonts.inter(fontWeight: FontWeight.w400, color: grey),
    ),
    dividerColor: primary,
    chipTheme: ChipThemeData(
      backgroundColor: primaryBg,
      shape: const StadiumBorder(),
      labelStyle: GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      surfaceTintColor: Colors.transparent,
    ),

    dialogTheme: const DialogTheme(backgroundColor: Colors.white),
  );

  @override
  Color get primaryColor => primary;

  @override
  ThemeData get themeData => _themeData;
}
