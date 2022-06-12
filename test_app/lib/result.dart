import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  
  final double _finalScore;
  final VoidCallback _resetButtonHandler;

  Result({double finalScore = 0.0, required VoidCallback resetHandler})
      : _finalScore = finalScore,
        _resetButtonHandler = resetHandler;

  String get resultText {
    var scoreText = _finalScore == _finalScore.floor()
        ? _finalScore.toStringAsFixed(0)
        : _finalScore;
    return 'You did $scoreText/3';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultText,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: _resetButtonHandler,
            child: Icon(
              Icons.restart_alt,
              size: 24.0,
            ),
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(20.0)
            ),
          ),
        ],
      ),
    );
  }
}
