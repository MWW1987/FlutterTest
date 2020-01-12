import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  void answerQuestion() {
    setState(() {
      answerIndex += 1;
    });
    print('kiram dahanet ' + answerIndex.toString() + ' bar');
  }

  Widget build(BuildContext context) {
    var question = [
      {
        'q': 'کص عمه ت رو چطور توصیف میکنی',
        'a': ['تپلی', 'قلمبه', 'گشاد', 'همه موارد']
      },
      {
        'q': 'عمه ت جنده س؟',
        'a': ['بله', 'کونیه', 'مقدسه', 'ب و ج']
      },
      {
        'q': 'شما آیا کونی هستید؟',
        'a': ['عمته', 'ننته', 'بله', 'همه موارد']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('اولین برنامه کیری من'),
        ),
        body: Column(
          children: <Widget>[
            Question(question[answerIndex]['q']),
            Answer(answerQuestion, question[answerIndex]['a']),
            Answer(answerQuestion),
            Answer(answerQuestion),
            Answer(answerQuestion)
          ],
        ),
      ),
    );
  }
}
