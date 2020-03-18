

import 'package:flutter/material.dart';
import './finalScreen.dart';

//import './question.dart';
//import './answer.dart';
import './qiuz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override 
  MyAppState createState() => MyAppState();
 
}


class MyAppState extends State<MyApp>{
  
   final questions = const [{'myquestion':'how old was he?', 'answers':['1','2','3','4']}, 
  {'myquestion':'Does he live in Nigeria?', 'answers':['yes', 'No', 'No Idea', 'before']},
  {'myquestion':'Is he a footballer?', 'answers':['yes, plays foy Enyimba', 'yes, plays fo Manchester', 'No', 'Not sure']}];

   int questionIndex = 0;
  void answeredQuestion(){
    setState((){
      questionIndex = questionIndex + 1;
    });
    if(questionIndex< questions.length){
      print('Questions remaining');
    }else{
      print('No more questions. Congratulations');
    }
    print(questionIndex);
  }
 @override
  Widget build(BuildContext context) {
   
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: questionIndex < questions.length ? Quiz(
        answerFunction: answeredQuestion, problemQuestion: questions,indexOfQuestion: questionIndex,
        ) : FinalScreen(),
    ),);
  }
}