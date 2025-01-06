import 'package:flutter/material.dart';

final theme = ThemeData(
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 1.5,
    shadowColor: Colors.grey,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF1B61A1),
    primary: const Color(0xFF1B61A1),
    onPrimary: Colors.white,
  ),
  primaryColor: const Color(0xFF1B61A1),
  fontFamily: 'Poppins',
  textTheme: const TextTheme(
    titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    titleSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(fontSize: 18),
    bodyMedium: TextStyle(fontSize: 16),
    bodySmall: TextStyle(fontSize: 14),
    labelLarge: TextStyle(fontSize: 14),
    labelMedium: TextStyle(fontSize: 12),
    labelSmall: TextStyle(fontSize: 10),
  ),
  useMaterial3: true,
);
