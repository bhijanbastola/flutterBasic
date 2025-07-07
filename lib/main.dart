import 'package:flutter/material.dart';
import 'package:todo/cv/cvWidgets.dart';

import 'package:todo/helpers/sharedprefrences.dart';

void main() async {
   await SharedPrefrencesHelper.init();

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
