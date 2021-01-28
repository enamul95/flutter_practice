import 'package:flutter/material.dart';
import 'Question.dart';
void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _MyAppSate();
  }
}
class _MyAppSate extends State<MyApp>{
  var _questionIndex=0;
  void _answerQuestion(){
    setState(() {
      _questionIndex = _questionIndex+1;
    });

    print(_questionIndex);
  }
  @override
  Widget build(BuildContext context) {
    var question = [
      'what is  favorite color? ',
      'what is your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(
             question[_questionIndex],
            ),
            RaisedButton(child: Text("Answer 1"),
                onPressed: _answerQuestion
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () =>  print("Answer 2"),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: (){
                print("Answer  3");
              },
            ),
          ],
        ),
      ),
    );
  }
}


