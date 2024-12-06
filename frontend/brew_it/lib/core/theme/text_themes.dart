import 'package:brew_it/core/theme/colors.dart';
import 'package:flutter/material.dart';

TextTheme baseTextTheme = const TextTheme(
  displayLarge: TextStyle(),
  displayMedium: TextStyle(),
  displaySmall: TextStyle(),
  headlineLarge: TextStyle(),
  headlineMedium: TextStyle(),
  headlineSmall: TextStyle(),
  titleLarge: TextStyle(),
  titleMedium: TextStyle(),
  titleSmall: TextStyle(),
  bodyLarge: TextStyle(),
  bodyMedium: TextStyle(),
  bodySmall: TextStyle(),
  labelLarge: TextStyle(),
  labelMedium: TextStyle(),
  labelSmall: TextStyle(),
).apply(
  bodyColor: textDarkColor,
  displayColor: textDarkColor,
);

TextStyle buttonStyle =
    const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 35);

TextStyle buttonSmallStyle =
    const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 24);
