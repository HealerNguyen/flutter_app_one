import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var questionText;

  Question({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      width: double.infinity,
      padding: EdgeInsets.all(8),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
