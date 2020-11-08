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
        {
          'answer': 'Spore',
        },
        {
          'answer': 'Heroes of Might and Magic',
        },
      ],
    ),
    Question(
      title: 'Какую еду предпочитаешь?',
      answers: [
        {
          'answers': 'Роллы',
          'isCorrect': 1,
        },
        {
          'answers': 'Ичпичмак',
        },
        {
          'answers': 'Котлетка с пюрешкой',
        },
        {'answer': 'ну ладно,роллы'},
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
        {'answer': 'куда-нибудь кроме России'},
      ],
    ),
    Question(
      title: 'Какой твой любимый праздник',
      answers: [
        {
          'answer': 'Новый год',
          'isCorrect': 1,
        },
        {'answer': 'Масленица'},
        {'answer': 'Рождество'},
        {'answer': 'День женщин'},
      ],
    ),
  ];
  List<Question> get questions => [..._data];
}
