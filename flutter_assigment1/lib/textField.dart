import 'package:flutter/material.dart';

class TextFieldWithButton extends StatelessWidget {
  final VoidCallback _setTextHandler;
  final TextEditingController _editingController;

  static const double _BUTTON_WIDTH = 40.0;
  static const double _BUTTON_HEIGHT = 30.0;
  static const double _BUTTON_PADDING_RIGHT = 10.0;
  static const double _TEXTBOX_MARGIN_LEFT = 10.0;
  static const double _TEXTBOX_MARGIN_RIGHT = 20.0;

  TextFieldWithButton(this._editingController, this._setTextHandler);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 250.0,
          margin: EdgeInsets.only(left: _TEXTBOX_MARGIN_LEFT, right: _TEXTBOX_MARGIN_RIGHT),
          child: TextField(
            controller: _editingController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: _BUTTON_PADDING_RIGHT),
          child: OutlinedButton(
            onPressed: _setTextHandler,
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.black87),
              minimumSize: MaterialStateProperty.all(
                  Size(_BUTTON_WIDTH, _BUTTON_HEIGHT)),
              // padding: MaterialStateProperty.all(EdgeInsets.only(right: _BUTTON_PADDING_RIGHT)),
            ),
            child: const Text("Change Text"),
          ),
        )
      ],
    );
  }
}
