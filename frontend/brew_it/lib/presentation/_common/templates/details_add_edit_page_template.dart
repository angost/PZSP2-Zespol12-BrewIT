import 'package:brew_it/presentation/_common/widgets/main_button.dart';
import 'package:brew_it/presentation/_common/widgets/my_icon_button.dart';
import 'package:flutter/material.dart';

class DetailsAddEditPageTemplate extends StatefulWidget {
  const DetailsAddEditPageTemplate(
      {required this.title,
      this.buttons,
      this.options,
      required this.fieldNames,
      required this.jsonFieldNames,
      this.fieldEditable,
      this.elementData,
      super.key});

  final String title;
  final List<MainButton>? buttons;
  final List<MyIconButton>? options;
  final List<String> fieldNames;
  final List<String> jsonFieldNames;
  final List<bool>? fieldEditable;
  final Map? elementData;

  @override
  State<DetailsAddEditPageTemplate> createState() =>
      _DetailsAddEditPageTemplateState();
}

class _DetailsAddEditPageTemplateState
    extends State<DetailsAddEditPageTemplate> {
  @override
  Widget build(BuildContext context) {
    List<String>? fieldValues;

    if (widget.elementData != null) {
      fieldValues = List.generate(
          widget.jsonFieldNames.length,
          (index) =>
              widget.elementData![widget.jsonFieldNames[index]].toString());
    }

    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Stack(
            children: [
              Row(
                children: [
                  const Spacer(),
                  Column(
                    children: <Widget>[] +
                        (widget.buttons ?? []) +
                        [
                          Row(
                            children: widget.options ?? [],
                          ),
                          const Spacer()
                        ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(widget.title,
                            style: Theme.of(context).textTheme.titleSmall),
                        const Spacer(),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                            widget.fieldNames.length,
                            (index) => TextFormField(
                                  decoration: InputDecoration(
                                      labelText: widget.fieldNames[index],
                                      enabled: widget.fieldEditable != null
                                          ? widget.fieldEditable![index]
                                          : false),
                                  initialValue: fieldValues != null
                                      ? fieldValues[index]
                                      : "",
                                )),
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}
