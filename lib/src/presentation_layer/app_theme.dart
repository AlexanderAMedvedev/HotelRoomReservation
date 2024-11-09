import 'package:flutter/material.dart';

final appTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  textTheme: _textTheme(),
  inputDecorationTheme: _inputDecorationTheme(),
);

TextTheme _textTheme() => const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 18,
        fontFamily: 'SF-Pro-Display',
        color: Colors.black,
      ),
      displayMedium: TextStyle(
        fontSize: 18,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w400,
        color: Colors.orange,
      ),
      displayLarge: TextStyle(
          fontSize: 20,
          fontFamily: 'SF-Pro-Display',
          fontWeight: FontWeight.w400,
          color: Colors.black),
      titleMedium: TextStyle(
          fontSize: 14,
          fontFamily: 'SF-Pro-Display',
          color: Colors.blue),
      headlineLarge: TextStyle(
          fontSize: 20,
          fontFamily: 'SF-Pro-Display',
          fontWeight: FontWeight.w600,
          color: Colors.black),
      headlineSmall: TextStyle(
          fontSize: 12,
          fontFamily: 'SF-Pro-Display',
          color: Colors.grey),
      bodyMedium: TextStyle(
          fontFamily: 'SF-Pro-Display',
          fontSize: 18,
          color: Colors.black),
    );

_inputDecorationTheme() => InputDecorationTheme(
      contentPadding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
      filled: true,
      fillColor: Colors.grey[200],
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    );
