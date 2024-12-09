import 'package:brew_it/core/theme/colors.dart';
import 'package:brew_it/core/theme/text_themes.dart';
import 'package:flutter/material.dart';

InputDecorationTheme baseTextFormFieldTheme = InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
    contentPadding: const EdgeInsets.symmetric(
      vertical: 13,
      horizontal: 13,
    ),
    fillColor: textLightColor,
    filled: true,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    labelStyle: baseTextTheme.titleLarge);

InputDecorationTheme disabledTextFormFieldTheme = InputDecorationTheme(
  border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: greyLightColor)),
  fillColor: Colors.transparent,
);
