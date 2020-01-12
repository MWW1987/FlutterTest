import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';

import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var answerIndex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      answerIndex = totalScore = 0;
    });
  }
  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      answerIndex += 1;
    });
    print('kiram dahanet ' + answerIndex.toString() + ' bar');
  }

  final question = [
    {
      'q': 'کص عمه ت رو چطور توصیف میکنی',
      'a': [
        {'text': 'تپلی', 'score': 4},
        {'text': 'قلمبه', 'score': 7},
        {'text': 'گشاد', 'score': 0},
        {'text': 'همه موارد', 'score': 10}
      ]
    },
    {
      'q': 'عمه ت جنده س؟',
      'a': [
        {'text': 'بله', 'score': 10},
        {'text': 'کونیه', 'score': 7},
        {'text': 'مقدسه', 'score': 0},
        {'text': 'ب و ج', 'score': 4}
      ]
    },
    {
      'q': 'شما آیا کونی هستید؟',
      'a': [
        {'text': 'عمته', 'score': 10},
        {'text': 'خودتی', 'score': 4},
        {'text': 'بله', 'score': 7},
        {'text': 'همه موارد', 'score': 0}
      ]
    }
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('اولین برنامه کیری من'),
        ),
        body: answerIndex < question.length
            ? Quiz(
                question: question,
                answerQuestion: answerQuestion,
                answerIndex: answerIndex,
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
