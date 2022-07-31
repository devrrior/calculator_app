import 'package:flutter/material.dart';

class LightTheme {
  static const firstBackground = Color(0xFFFFFFFF);
  static const secondBackground = Color(0xFFF9F9F9);
  static const thirdBackground = Color(0xFFF7F7F7);
  static const fontButtonColor = Color(0xFF2C3039);
  static const fontResultColor = Color(0xFF292D36);

  static final ThemeData themeData = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: firstBackground,
    primaryColor: secondBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: thirdBackground,
        onPrimary: const Color.fromARGB(255, 196, 196, 196),
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w700,
        color: fontResultColor,
      ),
      displayMedium: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: fontButtonColor,
        height: 1,
      ),
      bodyMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: fontButtonColor,
      ),
    ),
  );
}

class DarkTheme {
  static const firstBackground = Color(0xFF21252D);
  static const secondBackground = Color(0xFF292D36);
  static const thirdBackground = Color(0xFF272B33);
  static const fontButtonColor = Color(0xFFF1F1F1);
  static const fontResultColor = Color(0xFF292D36);

  static final ThemeData themeData = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: firstBackground,
    primaryColor: secondBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: thirdBackground,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w700,
        color: fontResultColor,
      ),
      displayMedium: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: fontButtonColor,
        height: 1,
      ),
      bodyMedium: TextStyle(
        color: fontButtonColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
