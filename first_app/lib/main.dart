import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppSatte();
  }
}

class _MyAppSatte extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\s your favorate color ?',
      'answers': [
        {'text': 'white', 'score': 1},
        {'text': 'Red', 'score': 5},
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 8}
      ],
    },
    {
      'questionText': 'what\s your favorate day ?',
      'answers': [
        {'text': 'Sunday', 'score': 1},
        {'text': 'Tuesday', 'score': 5},
        {'text': 'Thusday', 'score': 10},
        {'text': 'Friday', 'score': 8}
      ],
    },
    {
      'questionText': 'what\s your favorate movie ?',
      'answers': [
        {'text': 'movie 1', 'score': 1},
        {'text': 'movie 2', 'score': 5},
        {'text': 'movie 3', 'score': 10},
        {'text': 'movie 4', 'score': 8}
      ],
    },
    {
      'questionText': 'what\s your favorate month ?',
      'answers': [
        {'text': 'Jan', 'score': 1},
        {'text': 'Feb', 'score': 5},
        {'text': 'Apr', 'score': 10},
        {'text': 'Jun', 'score': 8}
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _restQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _restQuiz),
      ),
    );
  }
}
