import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      primarySwatch: Colors.amber,
      scaffoldBackgroundColor: Colors.grey[200],
      fontFamily: 'Montserrat Italic',
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.white10,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat Italic'),
              backgroundColor: Colors.amber,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ))));
}
