import 'package:flutter/material.dart';
import './models/question_model.dart';

class Answer extends StatelessWidget {

  final void Function(double) _answerHandler;
  final AnswerModel _answer;

  Answer(this._answer, this._answerHandler);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _answerHandler(_answer.score),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size.fromHeight(32)),
        maximumSize: MaterialStateProperty.all(const Size.fromHeight(32)),
      ),
      child: Text(_answer.answerText),
    );
  }
}
