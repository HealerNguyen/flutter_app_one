import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  var resetQuestion;

  Result(this.totalScore, this.resetQuestion);

  String get resultData {
    return totalScore > 3 ? 'Good job' : 'Please try again';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        // width: double.infinity,
        // height: double.infinity,
        child: Column(
      children: [
        RichText(
            text: TextSpan(
                text: 'Your result is ',
                style: TextStyle(color: Colors.black, fontSize: 25),
                children: <TextSpan>[
              TextSpan(text: resultData, style: TextStyle(color: Colors.green))
            ])),
        ElevatedButton(
          onPressed: resetQuestion,
          child: Text('Try again'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            fixedSize: MaterialStateProperty.all<Size>(Size.fromWidth(120)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        )
      ],
    ));
  }
}
