import 'package:flutter/semantics.dart';

import 'package:flutter/material.dart';
import 'package:hello_world/row_column.dart';

class Kalkulitor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Калькулятор')),
      body: Container(
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ColorBox(),
            //BiggerColorBox(),
            ColorBox(),
          ],
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  @override
  build(BuildContext context) {
    return Container(
        width: 150,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(),
        ),
        child: Text(''));
  }
}

class BiggerColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: Colors.white),
      ),
    );
  }
}
