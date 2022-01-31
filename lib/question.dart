import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const Question({Key? key}) : super(key: key);
  final String questionText; //values of the variable and cannot be altered in the future
  
  //final tell that this value never change after initialization in constructor
  const Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,//full width
      margin: const EdgeInsets.all(10),
        child: Text(
      questionText,
      style: const TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    ));
  }
}
