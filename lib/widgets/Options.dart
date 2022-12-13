// ignore_for_file: file_names

import 'option.dart';
import 'package:flutter/material.dart';

class OptionList extends StatelessWidget {
  final List options;
  const OptionList({super.key, required this.options});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: options.length,
      itemBuilder: (context, index) {
        return OptionTile(option: options[index]['option'], index: index);
      },
    );
  }
}
