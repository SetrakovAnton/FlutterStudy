import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/semantics.dart';
import 'package:hello_world/row_column.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyRowColumn(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Тестирование')),
      body: Container(
        child: Center(
          child: Text('Здесь что-то будет'),
        ),
      ),
    );
  }
}
