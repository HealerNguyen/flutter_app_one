import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:test_app/answer.dart';
import 'package:test_app/result.dart';
import 'quiz.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _indexQuest = 0;
  var isEnded = false;
  var _totalScore = 0;
  static const _listItems = [
    {
      'title': 'What is your name?',
      'answers': [
        {'title': 'Tuấn', 'score': 1},
        {'title': 'Healer','score': 2}
      ]
    },
    {
      'title': 'What is your favorite food?',
      'answers': [
        {'title': 'Bread','score': 2},
        {'title': 'Rice','score': 1}
      ]
    },
    {
      'title': 'What is your favorite sport?',
      'answers': [
        {'title': 'Badminton','score': 2},
        {'title': 'Soccer','score': 1}
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _indexQuest += 1;
      checkIsEnd(_indexQuest);
    });
  }

  void _resetQuestion() {
    setState(() {
      _indexQuest = 0;
      _totalScore = 0;
      isEnded = false;
    });
  }

  void checkIsEnd(index) {
    if (index <= _listItems.length - 1) {
      isEnded = false;
    } else {
      isEnded = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Home Page')),
            body: !isEnded
                ? Quiz(_answerQuestion, _listItems, _indexQuest)
                : Result(_totalScore, _resetQuestion)
        )
    );
  }
}
