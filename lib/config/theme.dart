import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData.light().copyWith(
    colorScheme: const ColorScheme.light().copyWith(
      primary: Colors.white, 
      secondary: Colors.white, 
      surface: Colors.white,
      background: Colors.white, 
      onBackground: Colors.white, 
    ), 
    scaffoldBackgroundColor: Colors.white, 
    iconTheme: const IconThemeData(color: Colors.indigo), 
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent, 
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.black),
      titleMedium: TextStyle(color: Colors.black), 
      titleSmall: TextStyle(color: Colors.black), 
      bodyLarge: TextStyle(color: Colors.black), 
      bodyMedium: TextStyle(color: Colors.black), 
      bodySmall: TextStyle(color: Colors.black),
    )
  );
}

ThemeData darkTheme() {
  return ThemeData.dark().copyWith(
    colorScheme: const ColorScheme.dark().copyWith(
      primary: Colors.black, 
      secondary: Colors.black, 
      surface: Colors.black,
      background: Colors.black, 
      onBackground: Colors.black, 
    ), 
    scaffoldBackgroundColor: Color.fromARGB(255, 69, 66, 66), 
    iconTheme: const IconThemeData(color: Colors.black), 
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent, 
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white), 
      titleSmall: TextStyle(color: Colors.white), 
      bodyLarge: TextStyle(color: Colors.white), 
      bodyMedium: TextStyle(color: Colors.white), 
      bodySmall: TextStyle(color: Colors.white),
    )
  );
}