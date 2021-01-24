import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() => {print('Good !')};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The Question?'),
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
              onPressed: () => {
                print('Answer 3 Chooesen !'),
              },
            ),
          ],
        ),
      ),
    );
  }
}
