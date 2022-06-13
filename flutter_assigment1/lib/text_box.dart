import 'package:flutter/material.dart';

import './textField.dart';

class HelloText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HelloTextState();
}

class _HelloTextState extends State<HelloText> {
  String _textDisplayed = "Initial text";
  final TextEditingController _editingController = TextEditingController();

  void _setTextViaButton() {
    setState(() {
      _textDisplayed = _editingController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Box"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            _textDisplayed,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextFieldWithButton(_editingController, _setTextViaButton),
        ],
      ),
    );
  }
}
