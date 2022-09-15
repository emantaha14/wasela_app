import 'package:flutter/material.dart';

class AppThemes{
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    fontFamily: "Montserrat",
    // need to enter the suitable text theme
    textTheme: TextTheme()
  );
}