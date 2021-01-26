import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return MyAppSate();
  }
}
class MyAppSate extends State<MyApp>{
  var questionIndex=0;
  void answerQuestion(){
    setState(() {
      questionIndex = questionIndex+1;
    });

    print(questionIndex);
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
            Text(
                question[questionIndex],
            ),
            RaisedButton(child: Text("Answer 1"),
                onPressed: answerQuestion
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
