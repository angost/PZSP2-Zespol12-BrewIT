import 'package:brew_it/core/theme/theme_constants.dart';
import 'package:brew_it/presentation/home/home_page_commercial.dart';
import 'package:brew_it/presentation/home/home_page_contract.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BrewIT Demo',
      theme: baseTheme,
      home: HomePageContract(),
    );
  }
}
