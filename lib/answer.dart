import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var _selectedHandler;
  var answerValue;

  Answer(this._selectedHandler, this.answerValue);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      margin: EdgeInsets.only(top: 8),
      child: ElevatedButton(
        onPressed: _selectedHandler,
        child: Text(answerValue),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
          fixedSize: MaterialStateProperty.all<Size>(Size.fromWidth(120)),
          foregroundColor:  MaterialStateProperty.all<Color>(Colors.white),
        ),
      )
    );
  }
}
