import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({@required this.title, @required this.answers});
}

class QuestionData {
  final _data = [
    Question(
      title: 'Какую игру предпочитаешь?',
      answers: [
        {
          'answer': 'Witcher 3',
        },
        {'answer': 'Skyrim', 'isCorrect': 1},
        {'answer': 'Spore'}
      ],
    ),
    Question(
      title: 'Какую еду предпочитаешь?',
      answers: [
        {
          'answers': 'роллы',
          'isCorrect': 1,
        },
        {
          'answers': 'или роллы',
        },
        {
          'answers': 'роллы,да',
        },
      ],
    ),
    Question(
      title: 'Куда бы хотел сьездить?',
      answers: [
        {
          'answer': 'Норвегия',
          'isCorrect': 1,
        },
        {
          'answer': 'Китай',
        },
        {
          'answer': 'Хорватия',
        },
      ],
    ),

    //List<Question> get questions => [..._data];
  ];
}
