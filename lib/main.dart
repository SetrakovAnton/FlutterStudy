import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/semantics.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'kalkulitor.dart';

void main() {
  debugPaintSizeEnabled = false;
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: (),
    );
  }
}


