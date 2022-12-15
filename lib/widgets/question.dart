import 'package:flutter/material.dart';

import 'Options.dart';

class QuestionWidget extends StatelessWidget {
  final List questions;
  const QuestionWidget({required this.questions, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(),
      itemCount: questions.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Text('${index + 1}. ${questions[index]['question']}'),
            ),
            OptionList(
              options: questions[index]['optons'],
            ),
          ],
        );
      },
    );
  }
}
