// ignore_for_file: file_names

import 'package:flutter/material.dart';

class OptionList extends StatefulWidget {
  final List options;
  const OptionList({super.key, required this.options});

  @override
  State<OptionList> createState() => _OptionListState();
}

int? _groupValue;

class _OptionListState extends State<OptionList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.options
          .map((e) => RadioListTile(
                title: Text(e['option']),
                value: e['id'],
                groupValue: _groupValue,
                onChanged: (value) {
                  setState(() {
                    print(value);
                    _groupValue = value;
                  });
                },
              ))
          .toList(),
    );
  }
}
