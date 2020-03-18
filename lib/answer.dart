import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function questionButton;
  Answer(this.questionButton);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
            color: Color.fromRGBO(200, 101, 230, 0.1),
            child: Text('A'), onPressed: questionButton,
            ),
    );
  }
}