import 'package:flutter/material.dart';
import 'package:todo/cv/cvWidget.dart';
import './todo.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'todo',
      debugShowCheckedModeBanner: false,
      home: const CvTemplate(),
    );
  }
}
