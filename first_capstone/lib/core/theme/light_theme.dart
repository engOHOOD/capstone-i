import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Handicrafts',
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color.fromARGB(255, 244, 148, 22),
      brightness: Brightness.light,
    ),
 textTheme: TextTheme(
      titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),
      titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
      titleSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Color.fromARGB(255, 225, 151, 14).withAlpha(200),
      unselectedItemColor: Color.fromARGB(255, 67, 59, 1),
    ),
  );
}
