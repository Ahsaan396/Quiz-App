import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Map<String, Object> question;
  final VoidCallback answerHandler;

  const Quiz({
    required this.question,
    required this.answerHandler,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question['questionText'] as String,
        ),
        ...(question['answers'] as List<Map<String, Object>>).map((answers) {
          return Answer(
            handler: answerHandler,
            optionText: answers['text'] as String,
          );
        }).toList()
      ],
    );
  }
}
