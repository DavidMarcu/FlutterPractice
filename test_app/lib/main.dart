import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
import './models/question_model.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestAppState();
  }
}

class _TestAppState extends State<TestApp> {
  
  int _questionIndex = 0;
  bool _quizEnded = false;
  double _currentScore = 0;

  final _questions = [
    QuestionModel(questionText: "What's your favourite pet animal?", answers: [
      AnswerModel(answerText: "cat"),
      AnswerModel(answerText: "dog", score: 1),
      AnswerModel(answerText: "fish"),
      AnswerModel(answerText: "parrot")
    ]),
    QuestionModel(questionText: "What's your favourite food?", answers: [
      AnswerModel(answerText: "pizza", score: 1),
      AnswerModel(answerText: "pasta"),
      AnswerModel(answerText: "french fries")
    ]),
    QuestionModel(questionText: "What's your favourite city?", answers: [
      AnswerModel(answerText: "Iasi"),
      AnswerModel(answerText: "London"),
      AnswerModel(answerText: "Paris", score: 1),
      AnswerModel(answerText: "Tokyo"),
      AnswerModel(answerText: "New York")
    ]),
  ];

  void _checkAnswer(double score) {
    _currentScore += score; 
    if (_questionIndex < _questions.length - 1) {
      setState(() {
        _questionIndex++;
      });
    } else {
      setState(() => _quizEnded = true);
    }
  }

  void _resetQuiz() {
    setState(() {
      _quizEnded = false;
      _questionIndex = 0;
      _currentScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TestApp"),
        ),
        body: _quizEnded
            ? Result(finalScore: _currentScore, resetHandler: _resetQuiz)
            : Quiz(_questions, _questionIndex, _checkAnswer),
      ),
    );
  }
}
