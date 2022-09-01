import 'package:flutter/material.dart';

class MyTheme {
  static const lightPrimary = Color(0xff5D9CEC);
  static const lightScaffoldBackground = Color(0xffDFECDB);
  static const lightDone = Color(0xff61E757);
  static const lightDelete = Color(0xffEC4B4B);
  static const darkPrimary = Color(0xff5D9CEC);
  static const darkScaffoldBackground = Color(0xff060E1E);
  static const darkDone = Color(0xff61E757);
  static const darkDelete = Color(0xffEC4B4B);
  static final lightTheme = ThemeData(
      primaryColor: lightPrimary,
      scaffoldBackgroundColor: lightScaffoldBackground,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedIconTheme: IconThemeData(size: 33),
          unselectedIconTheme: IconThemeData(size: 33)),
  textTheme: TextTheme(
    titleMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: lightPrimary
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      color: Colors.black
    )
  )
  );
}
