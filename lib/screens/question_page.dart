import 'package:api_app/widgets/question.dart';
import 'package:flutter/material.dart';

import '../services/quiz_api.dart';

class QuestionPage extends StatefulWidget {
  final int id;
  const QuestionPage({super.key, required this.id});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questions'),
      ),
      body: FutureBuilder(
        future: Services.getQuestion(id: widget.id),
        builder: (context, snapshot) {
          print(snapshot.connectionState);
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Error'),
            );
          } else if (snapshot.hasData) {
            return QuestionWidget(
                questions: snapshot.data['topic']['questions']);
          } else {
            return Text('No question');
          }
        },
      ),
    );
  }
}
