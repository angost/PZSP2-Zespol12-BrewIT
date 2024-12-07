import 'package:brew_it/core/theme/colors.dart';
import 'package:flutter/material.dart';

TextTheme baseTextTheme = const TextTheme(
  displayLarge: TextStyle(fontSize: 57),
  displayMedium: TextStyle(fontSize: 45),
  displaySmall: TextStyle(fontSize: 36),
  headlineLarge: TextStyle(fontSize: 32),
  headlineMedium: TextStyle(fontSize: 28),
  headlineSmall: TextStyle(fontSize: 24),
  titleLarge: TextStyle(fontSize: 22),
  titleMedium: TextStyle(fontSize: 16),
  titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
  bodyLarge: TextStyle(fontSize: 16),
  bodyMedium: TextStyle(fontSize: 14),
  bodySmall: TextStyle(fontSize: 12),
  labelLarge: TextStyle(fontSize: 14),
  labelMedium: TextStyle(fontSize: 12),
  labelSmall: TextStyle(fontSize: 11),
).apply(
  bodyColor: textDarkColor,
  displayColor: textDarkColor,
);

TextStyle buttonStyle =
    const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 18);

TextStyle buttonSmallStyle =
    const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 14);
