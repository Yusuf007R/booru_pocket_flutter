import 'package:BooruPocket/constants/constants.dart';
import 'package:flutter/material.dart';

final switchThumbState = MaterialStateProperty.resolveWith((states) {
  if (states.contains(MaterialState.selected)) return primaryColor;
  return Colors.grey.shade300;
});

ThemeData lightThemeData = ThemeData.light().copyWith(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    unselectedItemColor: Colors.grey.shade700,
    backgroundColor: Colors.grey.shade200,
  ),
  iconTheme: const IconThemeData(
    color: Colors.black54,
  ),
  listTileTheme: const ListTileThemeData(
    iconColor: Colors.black54,
  ),
  appBarTheme: const AppBarTheme(
    color: primaryColor,
    titleSpacing: 0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: switchThumbState,
    trackColor: MaterialStateProperty.all(secondaryColor),
  ),
  scaffoldBackgroundColor: Colors.grey.shade200,
  primaryColor: primaryColor,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: primaryColor,
    secondary: secondaryColor,
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
  appBarTheme: const AppBarTheme(
    color: primaryColor,
    titleSpacing: 0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: switchThumbState,
    trackColor: MaterialStateProperty.all(secondaryColor),
  ),
  brightness: Brightness.dark,
  primaryColor: primaryColor,
  colorScheme: const ColorScheme.dark(
    primary: primaryColor,
    secondary: secondaryColor,
  ),
  dividerTheme: DividerThemeData(
    color: Colors.grey.shade500,
    thickness: 1.2,
    space: 0,
  ),
);
