import 'package:flutter/material.dart';

const backgroundColor = Color(0xFFFAF6F2);
const darkBackgroundColor = Color(0xFF121212);
const lightButtonBlue = Color(0xFF0066FF);
const darkButtonBlue = Color(0xFF80BFFF);
const lightTextColor = Color(0xFF000000);
const darkTextColor = Color(0xFFE0E0E0);
const lightGray = Color(0xFFCCCCCC);
const darkGray = Color(0xFF666666);
const lightCardBackgroundColor = Color(0xFFFFFFFF);
const darkCardBackgroundColor = Color(0xFF1E1E1E);
const iconColors = Color(0xFFFFFFFF);
const navBarColor = Color(0xFFE5E5E5);

class AppTheme {
  static final lightTheme = ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: lightButtonBlue,
        unselectedItemColor: lightTextColor,
        backgroundColor: navBarColor,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
            iconColor: WidgetStateProperty.all(darkTextColor),
            backgroundColor: WidgetStateProperty.all(lightButtonBlue)),
      ),
      primaryIconTheme: const IconThemeData(color: lightTextColor),
      iconTheme: const IconThemeData(color: lightTextColor),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: backgroundColor,
      ),
      brightness: Brightness.light,
      textTheme: TextTheme(
          titleSmall: TextStyle(color: lightTextColor),
          titleMedium: TextStyle(color: lightTextColor),
          titleLarge: TextStyle(color: lightTextColor)),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(Colors.white),
          backgroundColor: WidgetStateProperty.all(lightButtonBlue),
        ),
      ));

  static final darkTheme = ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: darkButtonBlue,
        unselectedItemColor: darkTextColor,
        backgroundColor: darkGray,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
            iconColor: WidgetStateProperty.all(lightTextColor),
            backgroundColor: WidgetStateProperty.all(darkButtonBlue)),
      ),
      iconTheme: IconThemeData(color: darkTextColor),
      primaryIconTheme: IconThemeData(color: darkTextColor),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: darkBackgroundColor,
      ),
      brightness: Brightness.dark,
      textTheme: TextTheme(
          titleSmall: TextStyle(color: darkTextColor),
          titleMedium: TextStyle(color: darkTextColor),
          titleLarge: TextStyle(color: darkTextColor)),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(Colors.black),
          backgroundColor: WidgetStateProperty.all(darkButtonBlue),
        ),
      ));
}
