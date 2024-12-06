import 'package:brew_it/core/theme/colors.dart';
import 'package:brew_it/core/theme/text_themes.dart';
import 'package:flutter/material.dart';

ElevatedButtonThemeData primaryButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: textLightColor,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 70),
        textStyle: buttonStyle));

ElevatedButtonThemeData primarySmallButtonTheme = ElevatedButtonThemeData(
    style: primaryButtonTheme.style!.copyWith(
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        )),
        padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(vertical: 16, horizontal: 40)),
        textStyle: WidgetStatePropertyAll(buttonSmallStyle)));

ElevatedButtonThemeData secondaryButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: textLightColor,
        foregroundColor: secondaryColor,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: secondaryColor, width: 3)),
        padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 70),
        textStyle: buttonStyle));

ElevatedButtonThemeData secondarySmallButtonTheme = ElevatedButtonThemeData(
    style: secondaryButtonTheme.style!.copyWith(
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: secondaryColor, width: 2))),
        padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(vertical: 16, horizontal: 40)),
        textStyle: WidgetStatePropertyAll(buttonSmallStyle)));

ElevatedButtonThemeData tertiaryButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: secondaryTransparentColor,
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent));

IconButtonThemeData iconButtonTheme = IconButtonThemeData(
    style: IconButton.styleFrom(
        backgroundColor: greyLightColor, foregroundColor: Colors.black));
