import 'package:flutter/material.dart';

import './text_box.dart';

void main() {
  runApp(HelloTextApp());
}

class HelloTextApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HelloText(),
      debugShowCheckedModeBanner: false,
    );
  }
}
