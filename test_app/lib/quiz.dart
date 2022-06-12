import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

import './models/question_model.dart';

class Quiz extends StatelessWidget {

  final List<QuestionModel> _questions;
  final void Function(double) _answerHandler;
  final int _currentQuestion;

  Quiz(this._questions, this._currentQuestion, this._answerHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(_questions[_currentQuestion].questionText),
        ..._questions[_currentQuestion]
            .answers
            .map((answer) => Answer(answer, _answerHandler))
            .toList(),
      ],
    );
  }
}
