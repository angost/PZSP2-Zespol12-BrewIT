import 'package:brew_it/presentation/common/menu_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final String title = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(flex: 2, child: Container()),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Twoje konto - Browar komercyjny - Browar Wierzbowice",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  MenuButton(
                    "Zarządzanie urządzeniami",
                    type: "important",
                  ),
                  MenuButton("Twoje rezerwacje"),
                  MenuButton("Prośby o rezerwację od browarów kontraktowych"),
                  MenuButton("Uprawnieni do wstępu do browaru"),
                  MenuButton("Wyloguj się", type: "warning"),
                ],
              ),
            ),
          ),
          Expanded(flex: 2, child: Container())
        ]));
  }
}
