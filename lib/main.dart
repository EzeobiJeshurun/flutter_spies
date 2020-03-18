

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
  
   final questions = const [
    {'myquestion':'how old was he?', 
   'answers':[{'text':'1', 'score':10},
   {'text':'2', 'score':0},
   {'text':'3','score':0},
   {'text':'4','score':0}]}, 

  {'myquestion':'Does he live in Nigeria?', 
  'answers':[{'text':'yes','score': 0}, 
  {'text':'No', 'score':0},
   {'text':'No Idea', 'score':10}, 
   {'text':'before','score':0}]},

  {'myquestion':'Is he a footballer?', 
  'answers':[{'text':'yes, plays foy Enyimba','score':0}, 
  {'text':'yes, plays fo Manchester', 'score':0},
  {'text':'No', 'score':0}, 
  {'text':'Not sure', 'score':10}]}
  
  ];

   int questionIndex = 0;
   int totalScore = 0;
  void answeredQuestion(int score){
    // adds the score of the selected answers;
    totalScore += score;
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
        ) : FinalScreen(totalScore),
    ),);
  }
}