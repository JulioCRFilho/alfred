import 'package:alfred/src/constants/themes/text.dart';
import 'package:flutter/material.dart';

ThemeData get selectedTheme => _lightTheme;

final ThemeData _lightTheme = ThemeData(
  textTheme: selectedTextTheme,
);

final ThemeData _darkTheme = ThemeData.dark();
