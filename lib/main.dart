import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/cv/cvWidgets.dart';
import 'package:todo/cv/provider/provider.dart';

import 'package:todo/helpers/sharedprefrences.dart';

void main() async {
  await SharedPrefrencesHelper.init();

  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => userProvider(
          firstName: '',
          middleName: '',
          lastName: '',
          phoneNumber: '',
          address: '',
          age: '',
          dateTime:'',
          ninNumber: '',
        ),
      ),
    
    
    ],
    child:  MaterialApp(
      title: 'CV',
      debugShowCheckedModeBanner: false,
      home: const CvTemplate(),
    
    ),
    );
  }
}
