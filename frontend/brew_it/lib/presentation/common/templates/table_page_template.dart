import 'package:brew_it/presentation/common/widgets/main_button.dart';
import 'package:brew_it/presentation/common/widgets/my_icon_button.dart';
import 'package:flutter/material.dart';

class TablePageTemplate extends StatelessWidget {
  const TablePageTemplate(
      {required this.title,
      this.button,
      required this.headers,
      this.options,
      super.key});

  final String title;
  final MainButton? button;
  final List<String> headers;
  final List<MyIconButton>? options;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.titleSmall),
                    const Spacer(),
                    button ?? Container()
                  ],
                ),
              ),
              Expanded(flex: 9, child: Container(color: Colors.grey))
            ],
          ),
        ));
  }
}
