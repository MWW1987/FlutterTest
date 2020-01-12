import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalResult;
  String get resultText {
    String finalText;
    if (finalResult >= 24) {
      finalText = 'یعنی کص عمه ت که ' + finalResult.toString() + ' گرفتی';
    } else if (finalResult >= 15) {
      finalText = 'خیلی کصکشی' + finalResult.toString() + ' گرفتی';
    } else if (finalResult >= 4) {
      finalText = 'یعنی کیرم دهنت' + finalResult.toString() + ' گرفتی';
    } else {
      finalText = 'چقد تو کونی بشر' + finalResult.toString() + ' گرفتی';
    }
    return finalText;
  }

  Color get colorText {
    Color finalColor;
    if (finalResult >= 24) {
      finalColor = Colors.green;
    } else if (finalResult >= 15) {
      finalColor = Colors.blue;
    } else if (finalResult >= 4) {
      finalColor = Colors.orange;
    } else {
      finalColor = Colors.red;
    }
    return finalColor;
  }

  final Function resetHandler;
  Result(this.finalResult, this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultText,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: colorText),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('باز میخوای کون بدی؟'),
          textColor: Colors.redAccent,
          onPressed: resetHandler,
        )
      ],
    ));
  }
}
