import 'package:flutter/material.dart';

TextTheme get selectedTextTheme => _lightTextTheme;

TextTheme _lightTextTheme = const TextTheme(
  titleLarge: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 32,
  ),
  bodyLarge: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 24,
  )
);