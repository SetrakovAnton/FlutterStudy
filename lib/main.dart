import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:hello_world/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: TextTheme(
          caption: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        fontFamily: 'Georgia',
      ),
      home: MainMenu(),
    );
  }
}

class StateFul extends StatefulWidget {
  @override
  Kalkulitor createState() => Kalkulitor();
}

class Kalkulitor extends State<StateFul> {
  bool isTouched = false;
  num num1 = 0;
  num num2 = 0;
  num sum = 0;

  @override
  build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          //color: Colors.blue[200],
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: TextFormField(
                    decoration:
                        InputDecoration(labelText: 'Введите первое число:'),
                    onSaved: (String value1) {
                      num1 = int.parse(value1);
                      sum += num1;
                    }),
              ),
              Container(
                child: TextFormField(
                    decoration:
                        InputDecoration(labelText: 'Введите второе число:'),
                    onSaved: (String value2) {
                      num2 = int.parse(value2);
                      sum += num2;
                    }),
              ),
              IconButton(
                  color: Colors.red,
                  icon:
                      (isTouched ? Icon(Icons.add_circle) : Icon(Icons.album)),
                  onPressed: playResult),
              Text('$num1 + $num2'),
            ],
          ),
        ),
      ),
    );
  }

  void playResult() {
    setState(() {
      if (isTouched) {
        isTouched = false;
      } else {
        isTouched = true;
        sum = num1 + num2;
      }
    });
  }

  num result() {
    sum = num1 + num2;
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Калькулятор')),
      body: _Result(),
    );
  }
}

Widget _Result() => Container(
      child: Column(
        children: <Widget>[
          //Num1Box(),
          //Num2Box(),
          //SizedBox(height: 50),
          StateFul(),
        ],
      ),
    );

// class FavouriteWidget extends StatefulWidget {
//   @override
//   _FavouriteWidgetState createState() => _FavouriteWidgetState();
// }

// class _FavouriteWidgetState extends State<FavouriteWidget> {
//   bool _isFavorited = false;
//   int _favoriteCount = 87654;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: <Widget>[
//         Container(
//           child: IconButton(
//               color: Colors.red,
//               icon: (_isFavorited
//                   ? Icon(Icons.favorite)
//                   : Icon(Icons.favorite_border)),
//               onPressed: _toggleFavorite),
//         ),
//         SizedBox(
//           width: 40,
//           child: Container(
//             child: Text('$_favoriteCount'),
//           ),
//         ),
//       ],
//     );
//   }

//   void _toggleFavorite() {
//     setState(() {
//       if (_isFavorited) {
//         _isFavorited = false;
//         _favoriteCount -= 1;
//       } else {
//         _isFavorited = true;
//         _favoriteCount += 1;
//       }
//     });
//   }
// }

// class PersonWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Япония,Старшая Некома')),
//       body: Container(
//         child: _buildMainColumn(),
//       ),
//     );
//   }
// }

// Widget _buildMainColumn() => ListView(
//       children: [
//         _buildTopImage(),
//         Center(
//           child: Container(
//             padding: const EdgeInsets.only(left: 20, right: 20),
//             child: Column(
//               children: <Widget>[
//                 Container(
//                   child: _buildRating(),
//                 ),
//                 Card(
//                   elevation: 5,
//                   margin: const EdgeInsets.all(5),
//                   child: Container(
//                     padding: const EdgeInsets.all(10),
//                     child: _buildAction(),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(5),
//                   child: _buildDesk(),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );

// Widget _buildTopImage() => Container(
//       child: Card(
//         elevation: 5,
//         margin: const EdgeInsets.only(
//           left: 20,
//           right: 20,
//           top: 20,
//         ),
//         child: Image.asset(
//           'assets/images/dodik.jpeg',
//           fit: BoxFit.cover,
//         ),
//       ),
//     );

// Widget _buildRating() => ListTile(
//       title: Text(
//         'Шоё Хината',
//         style: TextStyle(
//           fontWeight: FontWeight.w500,
//           fontSize: 16.0,
//         ),
//       ),
//       subtitle: Text('Япония,Старшая школа Некома'),
//       trailing: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           FavouriteWidget(),
//         ],
//       ),
//     );

// Widget _buildAction() => Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: <Widget>[
//         _buildButton('Центральный блокирующий', Icons.star, Colors.black),
//         _buildButton('Рост:164', Icons.radio_button_checked, Colors.black),
//         _buildButton('Возраст:16', Icons.school, Colors.black),
//       ],
//     );

// Widget _buildButton(String label, IconData icon, Color color) => Column(
//       children: <Widget>[
//         Icon(
//           icon,
//           color: Colors.black,
//         ),
//         Container(
//           child: Text(
//             label,
//             style: TextStyle(
//               fontWeight: FontWeight.w400,
//               color: color,
//             ),
//           ),
//         ),
//       ],
//     );

// Widget _buildDesk() => Text(
//       'Шоё Хината (яп.:日向 翔陽 Hinata Shōyō) – главный герой аниме и манги Волейбол. Хината был мотивирован начать играть в волейбол, когда он стал свидетелем того, как низкий волейболист Карасуно по прозвищу Маленький гигант обыгрывал гораздо более крупных противников',
//       softWrap: true,
//     );
