import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:hello_world/Models/Question.dart';
import 'package:hello_world/Widgets/answer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Домашняя страница')),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: const Color(0xff2a375a),
          image: DecorationImage(
            image: AssetImage('assets/images/Koridor.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  data.questions[_questionIndex].title,
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
              ...data.questions[_questionIndex].answers
                  .map((value) => Answer(
                        title: value['answer'],
                      ))
                  .toList(),
              RaisedButton(
                onPressed: () => setState(() => _questionIndex++),
                child: Text('Дальше'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
