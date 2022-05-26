import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> listItems;
  final answerQuestion;
  final int indexQuest;

  Quiz(this.answerQuestion, this.listItems, this.indexQuest);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: listItems[indexQuest]['title'],
        ),
        // Answer(_answerQuestion)
        ...(listItems[indexQuest]['answers'] as List<Map<String, Object>>)
            .map((item) {
          return Answer(() => answerQuestion(item['score']), item['title']);
        }).toList()
      ],
    );
  }
}