import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  
  final String _questionText;

  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        _questionText,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
