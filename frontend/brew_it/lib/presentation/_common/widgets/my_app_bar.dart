import 'package:brew_it/presentation/log_in_register/choose_user_type_page.dart';
import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar(BuildContext context, {super.key})
      : super(
            leading: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChooseUserTypePage()));
                },
                icon: const Icon(Icons.home)),
            automaticallyImplyLeading: false);
}
