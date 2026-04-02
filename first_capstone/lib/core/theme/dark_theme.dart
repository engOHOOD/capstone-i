import 'package:flutter/material.dart';

class DarkTheme {
  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Handicrafts',
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color.fromARGB(255, 244, 148, 22),
      brightness: Brightness.dark,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Color.fromARGB(255, 225, 151, 14).withAlpha(200),
      unselectedItemColor: Color(0xffF7F8F0),
    ),
  );
}
