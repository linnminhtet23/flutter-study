import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const Question({Key? key}) : super(key: key);
  final String questionText;
  //final tell that this value never change after initialization in constructor
  const Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,//full width
        child: Text(
      questionText,
      style: const TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    ));
  }
}
