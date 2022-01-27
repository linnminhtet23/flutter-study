//flutter is all about widgets
import 'package:flutter/material.dart';
import './question.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {

    //set state is used to re-render UI
    setState(() {
       _questionIndex = _questionIndex + 1;
    });
   
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'My First App',
            ),
            elevation: 0.5,
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex]),
              ElevatedButton(
                  onPressed: _answerQuestion, child: const Text("Answer 1")),
              ElevatedButton(
                  onPressed: ()=>print("answer2"), child: const Text("Answer 2")),
              ElevatedButton(
                  onPressed: ()=>print("answer3"), child: const Text("Answer 3"))
            ],
          )),
    );
  }
}
