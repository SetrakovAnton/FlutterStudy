import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class MyFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Верстка теория')),
      body: Container(
        color: Colors.grey,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Container(
            color: Colors.redAccent[400],
            width: 50,
            child: Text(
              'Dart',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
              softWrap: false,
              overflow: TextOverflow.clip,
            ),
          ),
          Icon(
            Icons.favorite,
            size: 50,
            color: Colors.red,
          ),

          Expanded(
            child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRJlgFIAW5_WsnFNYIH3IsGVgE-M_3P-3YTGw&usqp=CAU'),
          ),

          //BiggerColorBox(),

          //Flexible(child: ColorBox(), fit: FlexFit.loose, flex: 1),

          // SizedBox(
          //   width: 40,
          // ),

          // SizedBox(
          //   width: 100,
          //   height: 100,
          //   child: ColorBox(),
          // ),

          // Spacer(
          //   flex: 2,
          // ),

          // Flexible(
          //   child: ColorBox(),
          //   fit: FlexFit.loose,
          //   flex: 1,
          // ),

          // Expanded(
          //   child: ColorBox(),
          //   flex: 1,
          // ),
        ]),
      ),
    );
  }
}

class BiggerColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.green[500],
        border: Border.all(),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.redAccent[400],
        border: Border.all(),
      ),
      //child: Text('123'),
    );
  }
}
