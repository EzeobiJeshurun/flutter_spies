

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override 
  MyAppState createState() => MyAppState();
 
}


class MyAppState extends State<MyApp>{
   int questionIndex = 0;
  void answeredQuestion(){
    setState((){
      questionIndex = questionIndex + 1;
    });
    
    print(questionIndex);
  }
 @override
  Widget build(BuildContext context) {
    var questions = ['how old was he?', 
  'Does he live in Nigeria?',
  'Is he a footballer?'];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: Column(
        children: <Widget>[
          Question(questions[questionIndex]),
          Answer(answeredQuestion),
          Answer(answeredQuestion),
          Answer(answeredQuestion),
          Answer(answeredQuestion),
        ],
      ),
    ),);
  }
}