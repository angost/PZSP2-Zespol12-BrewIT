import 'package:brew_it/core/theme/button_themes.dart';
import 'package:brew_it/core/theme/colors.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  MenuButton(this.content, {this.type = "default", super.key});

  final String content;
  final String type;
  final typeToColor = {
    "default": secondaryTransparentColor,
    "important": primaryTransparentColor,
    "warning": errorTransparentColor,
  };

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: tertiaryButtonTheme.style!.copyWith(
            backgroundColor: WidgetStateProperty.all(
                typeToColor.containsKey(type)
                    ? typeToColor[type]
                    : typeToColor["default"])),
        child: Text(content));
  }
}
