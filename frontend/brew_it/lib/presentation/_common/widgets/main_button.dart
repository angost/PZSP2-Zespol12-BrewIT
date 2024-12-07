import 'package:brew_it/core/theme/button_themes.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  MainButton(this.content, {this.type = "default", super.key});

  final String content;
  final String type;
  final typeToStyle = {
    "default": secondaryButtonTheme,
    "primary_big": primaryButtonTheme,
    "primary_small": primarySmallButtonTheme,
    "secondary_big": secondaryButtonTheme,
    "secondary_small": secondarySmallButtonTheme,
  };

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: typeToStyle.containsKey(type)
            ? typeToStyle[type]!.style
            : typeToStyle["default"]!.style,
        child: Text(content));
  }
}
