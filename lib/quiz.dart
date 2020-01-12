import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function answerQuestion;
  final int answerIndex;

  Quiz(
      {@required this.question,
      @required this.answerQuestion,
      @required this.answerIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(question[answerIndex]['q']),
        ...(question[answerIndex]['a'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList(),
      ],
    );
  }
}
