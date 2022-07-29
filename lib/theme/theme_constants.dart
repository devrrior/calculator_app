import 'package:flutter/material.dart';

class LightTheme {
  static const firstBackground = Color(0xFFFFFFFF);
  static const secondBackground = Color(0xFFF9F9F9);
  static const thirdBackground = Color(0xFFF7F7F7);
  static const fontColor = Color(0xFF2C3039);

  static final ThemeData themeData = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: firstBackground,
    primaryColor: secondBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: thirdBackground,
        onPrimary: const Color.fromARGB(255, 196, 196, 196),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    textTheme: const TextTheme(
      button: TextStyle(
        color: fontColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

class DarkTheme {
  static const firstBackground = Color(0xFF21252D);
  static const secondBackground = Color(0xFF292D36);
  static const thirdBackground = Color(0xFF272B33);
  static const fontColor = Color(0xFFF1F1F1);

  static final ThemeData themeData = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: firstBackground,
    primaryColor: secondBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: thirdBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    textTheme: const TextTheme(
      button: TextStyle(
        color: fontColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
