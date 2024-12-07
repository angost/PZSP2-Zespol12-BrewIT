import 'package:brew_it/presentation/_common/widgets/menu_button.dart';
import 'package:flutter/material.dart';

class HomePageTemplate extends StatelessWidget {
  const HomePageTemplate(
      {required this.title, required this.buttons, super.key});

  final String title;
  final List<MenuButton> buttons;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(flex: 2, child: Container()),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ] +
                    buttons,
              ),
            ),
          ),
          Expanded(flex: 2, child: Container())
        ]));
  }
}
