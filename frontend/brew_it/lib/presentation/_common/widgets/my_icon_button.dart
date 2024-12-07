import 'package:brew_it/core/theme/button_themes.dart';
import 'package:brew_it/core/theme/colors.dart';
import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  MyIconButton({this.type = "default", super.key});

  final String type;

  final typeToIcon = {
    "default": Icons.info_outline,
    "add": Icons.add,
    "edit": Icons.edit,
    "save": Icons.save,
    "delete": Icons.delete,
    "accept": Icons.check_circle_outline_outlined,
    "cancel": Icons.cancel_outlined,
    "time": Icons.schedule,
    "info": Icons.info_outline,
    "link": Icons.link,
    "configure": Icons.settings,
  };

  final typeToColor = {
    "default": greyLightColor,
    "delete": errorTransparentColor,
    "accept": primaryTransparentColor,
    "cancel": errorTransparentColor,
  };

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        style: iconButtonTheme.style!.copyWith(
            backgroundColor: WidgetStatePropertyAll(
                typeToColor.containsKey(type)
                    ? typeToColor[type]
                    : typeToColor["default"])),
        icon: typeToIcon.containsKey(type)
            ? Icon(typeToIcon[type])
            : Icon(typeToIcon["default"]));
  }
}