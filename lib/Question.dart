import 'package:flutter/cupertino.dart';
class Question extends StatelessWidget{
  String questtionText;

  Question(this.questtionText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child:Text(questtionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    ),);
  }
}