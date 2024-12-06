import 'package:flutter/material.dart';
import 'package:brew_it/presentation/home/home_page_commercial.dart';
import 'package:brew_it/presentation/home/home_page_contract.dart';

class ChooseUserTypePage extends StatelessWidget {
  const ChooseUserTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          const Text(
            "Jakie konto chcesz założyć?",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  color: Colors.grey.shade600,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 120),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePageCommercial()));
                      },
                      child: const Text(
                        "Browar komercyjny",
                      ),
                    ),
                  )),
              Container(
                  color: Colors.grey.shade600,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 120),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePageContract()));
                      },
                      child: const Text(
                        "Browar kontraktowy",
                      ),
                    ),
                  )),
            ],
          ),
        ]));
  }
}
