import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData lightTheme = ThemeData(

    brightness: Brightness.light,

    primaryColor: const Color(0xff5f259f),

    scaffoldBackgroundColor: const Color(0xfff5f5f7),

    appBarTheme: const AppBarTheme(

      backgroundColor: Color(0xff5f259f),

      foregroundColor: Colors.white,

      elevation: 0,
    ),

    inputDecorationTheme: InputDecorationTheme(

      filled: true,

      fillColor: Colors.white,

      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 14,
      ),

      border: OutlineInputBorder(

        borderRadius: BorderRadius.circular(12),

        borderSide: BorderSide.none,
      ),

      hintStyle: const TextStyle(

        color: Colors.grey,
      ),
    ),

    textTheme: const TextTheme(

      bodyLarge: TextStyle(
        color: Colors.black,
      ),

      bodyMedium: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}