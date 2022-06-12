import 'package:flutter/material.dart';

class HelloText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HelloTextState();
}

class _HelloTextState extends State<HelloText> {
  String _textDisplayed = "Initial text";
  final TextEditingController _editingController = TextEditingController();

  void _setText(String text) {
    setState(() {
      _textDisplayed = text;
    });
  }

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
        children: <Widget>[
          Text(
            _textDisplayed,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextField(
            onSubmitted: _setText,
            controller: _editingController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          OutlinedButton(
            onPressed: _setTextViaButton,
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.black87),
            ),
            child: const Text("Change Text"),
          )
        ],
      ),
    );
  }
}
