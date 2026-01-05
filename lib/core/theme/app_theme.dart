import 'package:flutter/material.dart';
import 'dart:ui'; // Required for PlatformDispatcher

// Note: Ensure your 'colors.dart' file defines primaryColor, lightBackgroundColor, etc.
import 'package:mysite/core/color/colors.dart'; 

class AppTheme {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    // Corrected logic: if isDarkTheme is true, return darkTheme
    return isDarkTheme ? ThemeColors.darkTheme : ThemeColors.lightTheme;
  }
}

class ThemeColors {
  const ThemeColors._();

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    primaryColor: primaryColor,
    scaffoldBackgroundColor: lightBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      backgroundColor: lightBackgroundColor,
      elevation: 0,
    ),
    // Updated 'button' to 'labelLarge'
    textTheme: TextTheme(
      labelLarge: TextStyle(color: lightTextColor),
    ),
    // Modern way to handle background colors
    colorScheme: ColorScheme.light(
      background: lightBackgroundColor,
      primary: primaryColor,
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xFF00040F),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      backgroundColor: darkBackgroundColor,
      elevation: 0,
    ),
    textTheme: TextTheme(
      labelLarge: TextStyle(color: darkTextColor),
    ),
    colorScheme: ColorScheme.dark(
      background: darkBackgroundColor,
      primary: primaryColor,
    ),
  );

  // Updated to use PlatformDispatcher instead of the deprecated .window
  static Brightness get currentSystemBrightness =>
      PlatformDispatcher.instance.platformBrightness;
}

extension ThemeExtras on ThemeData {
  Color get navBarColor => brightness == Brightness.light
      ? const Color(0xffF0F0F0)
      : const Color(0xFF00040F);

  Color get textColor => brightness == Brightness.light
      ? const Color(0xFF403930)
      : const Color(0xFFFFF8F2);

  Color get secondaryColor => const Color(0xFFFE53BB);

  Gradient get serviceCard =>
      brightness == Brightness.light ? grayWhite : grayBack;

  Gradient get contactCard =>
      brightness == Brightness.light ? grayWhite : contactGradi;
}