
import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> problemQuestion;
  final Function answerFunction;
  final int indexOfQuestion;
  Quiz({@required this.answerFunction, @required this.problemQuestion, @required this.indexOfQuestion});


  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Question(problemQuestion[indexOfQuestion]['myquestion']),
          ...(problemQuestion[indexOfQuestion]['answers'] as List<String>).map((qes){
            return Answer(answerFunction, qes);
          }).toList()
         
        ],
      ) ;
  }
}