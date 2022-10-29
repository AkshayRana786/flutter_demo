import 'package:flutter/material.dart';

import './results.dart';
import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'title': 'Black', 'score': 10},
        {'title': 'Blue', 'score': 7},
        {'title': 'Red', 'score': 5},
        {'title': 'White', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favorit animal ?',
      'answers': [
        {'title': 'Rabbit', 'score': 10},
        {'title': 'Sanke', 'score': 10},
        {'title': 'Elephant', 'score': 10},
        {'title': 'Lion', 'score': 10},
      ],
    },
    {
      'questionText': 'Who\'s your favorit instructor ?',
      'answers': [
        {'title': 'Mosh', 'score': 10},
        {'title': 'Harry', 'score': 10},
        {'title': 'Max', 'score': 10},
        {'title': 'Bob', 'score': 10},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetApp() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestin(int score) {
    _totalscore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestin: _answerQuestin,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Results(_totalscore, _resetApp),
      ),
    );
  }
}
