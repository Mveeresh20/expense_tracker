import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.purple,
    scaffoldBackgroundColor: Colors.grey[200],
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.purple,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 16),
    ),
  );
}
