import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restProgram;

  Result(this.resultScore, this.restProgram);

  String get resultText {
    String textValue;
    if (resultScore > 8) {
      textValue = 'You are Outstanding';
    } else if (resultScore > 10) {
      textValue = 'You are Excelent';
    } else if (resultScore > 19) {
      textValue = 'You are very Good';
    } else if (resultScore > 25) {
      textValue = 'You are Good';
    } else {
      textValue = 'You are Bad';
    }
    return textValue;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultText,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: restProgram,
            child: Text('Rest Quiz!'),
            textColor: Colors.green,
          )
        ],
      ),
    );
  }
}
