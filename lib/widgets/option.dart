import 'package:flutter/material.dart';

import '../services/quiz_api.dart';

class OptionTile extends StatefulWidget {
  final String option;
  final int index;
  OptionTile({super.key, required this.option, required this.index});

  @override
  State<OptionTile> createState() => _OptionTileState();
}

int? _groupValue;

class _OptionTileState extends State<OptionTile> {
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Text(widget.option),
      value: widget.index,
      groupValue: _groupValue,
      onChanged: (value) {
        setState(() {
          print(value);
          _groupValue = value;
        });
      },
    );
  }
}
