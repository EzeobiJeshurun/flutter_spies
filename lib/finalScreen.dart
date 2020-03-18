import 'package:flutter/material.dart';

class FinalScreen extends StatelessWidget {
  final int myScore;
  FinalScreen(this.myScore);
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('You scored ${myScore} out of 30', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.indigo),),);
  }
}