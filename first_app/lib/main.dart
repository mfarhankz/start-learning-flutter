import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppSatte();
  }
}

class _MyAppSatte extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what\s your favorate color ?',
        'answers': ['white', 'Red', 'Blue', 'Green'],
      },
      {
        'questionText': 'what\s your favorate day ?',
        'answers': ['Sunday', 'Friday', 'Tuesday', 'Thusday'],
      },
      {
        'questionText': 'what\s your favorate movie ?',
        'answers': ['movie 1', 'movie 2', 'movie 3', 'movie 4'],
      },
      {
        'questionText': 'what\s your favorate month ?',
        'answers': ['Jan', 'Feb', 'Apr', 'Jun'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answers) {
              return Answer(_answerQuestion, answers);
            }).toList()
          ],
        ),
      ),
    );
  }
}
