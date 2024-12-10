import 'package:brew_it/core/theme/button_themes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  MainButton(this.content,
      {this.type = "default",
      this.navigateToPage,
      this.dataForPage,
      this.customOnPressed,
      this.formKey,
      this.apiCall,
      super.key});

  final String content;
  final String type;
  final Function? navigateToPage;
  final Map? dataForPage;
  final Function? customOnPressed;
  final GlobalKey<FormState>? formKey;
  final String? apiCall;

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
        onPressed: () async {
          if (formKey != null && apiCall != null) {
            formKey!.currentState!.save();
            final dio = Dio();
            final response = await dio.post(
              'https://jsonplaceholder.typicode.com/posts', // MOCK -> apiCall!
              data: {
                // MOCK -> dataForPage
                'title': 'My post',
                'body': 'This is my post content',
                'userId': 1,
              },
            );
            print(response.data);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return navigateToPage!(dataForPage);
            }));
          } else if (navigateToPage != null) {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              if (dataForPage != null) {
                return navigateToPage!(dataForPage);
              } else {
                return navigateToPage!();
              }
            }));
          } else if (customOnPressed != null) {
            customOnPressed!();
          }
        },
        style: typeToStyle.containsKey(type)
            ? typeToStyle[type]!.style
            : typeToStyle["default"]!.style,
        child: Text(content));
  }
}
