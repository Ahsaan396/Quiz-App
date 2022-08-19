import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

/*void main() {
  runApp(MyApp());
}*/
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _currentQuestion = 0;
  int _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'Which\'s capital of hytry?',
      'answers': [
        {'text': 'tytyt', 'score': 0},
        {'text': 'Nektjteyhw Detrywlhi', 'score': 10},
        {'text': 'rtyjyt', 'score': 0},
        {'text': 'ghjytuj6', 'score': 0}
      ]
    },
    {
      'questionText': 'Which\'s mother toung of India?',
      'answers': [
        {'text': 'Marathi', 'score': 0},
        {'text': 'Gujarati', 'score': 0},
        {'text': 'Tamil', 'score': 0},
        {'text': 'Hindi', 'score': 10}
      ]
    },
    {
      'questionText': 'Who\'s prime ministor of Bangladesh?',
      'answers': [
        {'text': 'iygfelfyh', 'score': 10},
        {'text': 'fgfd vbgfdg', 'score': 0},
        {'text': 'greter bghfd', 'score': 0},
        {'text': 'grgfr gr', 'score': 0}
      ]
    },
    {
      'questionText': 'Who\'s president of Bangladesh?',
      'answers': [
        {'text': 'rtger r', 'score': 0},
        {'text': 'rtgr Obrtgreama', 'score': 0},
        {'text': 'rgr rtgfrw', 'score': 10},
        {'text': 'yu Pattreil', 'score': 0}
      ]
    },
    {
      'questionText': 'Who\'s Chief Minister of rte5rt?',
      'answers': [
        {'text': 're Pahsedetel', 'score': 0},
        {'text': 'rfr g', 'score': 10},
        {'text': 'Jayesh Rarrtdadiya', 'score': 0},
        {'text': 'rtgr trgrt', 'score': 0}
      ]
    },
    {
      'questionText':
          'Which of the following was the author of the Bangladesh?',
      'answers': [
        {'text': 'df', 'score': 0},
        {'text': 'drtgre', 'score': 0},
        {'text': 'drtgretg Bhatta', 'score': 0},
        {'text': 'brrfgr', 'score': 10}
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _currentQuestion = 0;
      _totalScore = 0;
    });
  }

  void _answerHandler() {
    if (_currentQuestion < _questions.length - 1) {
      setState(() {
        _currentQuestion += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _currentQuestion == _questions.length - 1
            ? Result(20, _resetQuiz)
            : Quiz(
                question: _questions[_currentQuestion],
                answerHandler: _answerHandler,
              ),
      ),
    );
  }
}
