import 'package:flutter/material.dart';

ThemeData lightThemeData = ThemeData.light().copyWith(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    unselectedItemColor: Colors.grey.shade700,
  ),
  iconTheme: const IconThemeData(
    color: Colors.black,
    opacity: 0.75,
  ),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF5f27cd),
    secondary: Color(0xFFf78fb3),
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
    color: Colors.white,
    opacity: 0.75,
  ),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF5f27cd),
    secondary: Color(0xFFf78fb3),
  ),
  dividerTheme: DividerThemeData(
    color: Colors.grey.shade500,
    thickness: 1.2,
    space: 0,
  ),
);
