import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  var questions = [
    'what is your name?',
    'what is your father name?',
  ];
  void answerQuestion() => {questionIndex = questionIndex + 1};

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what is your name?',
      'what is your father name?',
      'what is your mother name?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 Chooesen !'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer 3 Chooesen !');
              },
            ),
          ],
        ),
      ),
    );
  }
}
