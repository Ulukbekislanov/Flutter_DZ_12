import 'package:flutter/material.dart';

class AppTheme {
  static const Color telegramBlue = Color(0xFF2AABEE);

  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    colorSchemeSeed: telegramBlue,
    appBarTheme: const AppBarTheme(
      backgroundColor: telegramBlue,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF17212B), // Темно-синий Telegram
    colorSchemeSeed: telegramBlue,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF242F3D),
      foregroundColor: Colors.white,
      elevation: 0,
    ),
  );
}