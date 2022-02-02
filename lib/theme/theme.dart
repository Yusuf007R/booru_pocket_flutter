import 'package:flutter/material.dart';

ThemeData lightThemeData = ThemeData.light().copyWith(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    unselectedItemColor: Colors.grey.shade700,
    backgroundColor: Colors.grey.shade200,
  ),
  scaffoldBackgroundColor: Colors.grey.shade200,
  primaryColor: const Color(0xFF6C3FC7),
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF6C3FC7),
    secondary: Color(0xFFBF87F3),
  ),
  dividerTheme: DividerThemeData(
    color: Colors.grey.shade500,
    thickness: 1.2,
    space: 0,
  ),
);

ThemeData darkThemeData = ThemeData.dark().copyWith(
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    unselectedItemColor: Colors.white70,
  ),
  iconTheme: const IconThemeData(
    color: Colors.white70,
  ),
  primaryColor: const Color(0xFF6C3FC7),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF6C3FC7),
    secondary: Color(0xFFBF87F3),
  ),
  dividerTheme: DividerThemeData(
    color: Colors.grey.shade500,
    thickness: 1.2,
    space: 0,
  ),
);
