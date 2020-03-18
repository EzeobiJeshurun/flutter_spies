import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function questionButton;
  final String answerText;

  Answer(this.questionButton, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      child: RaisedButton(
            textColor: Colors.amberAccent,
            color: Color.fromRGBO(200, 101, 230, 0.1),
            child: Text(answerText), onPressed: questionButton,
            ),
    );
  }
}
