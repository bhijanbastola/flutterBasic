import 'package:flutter/material.dart';
import 'cvWidget.dart';

class Cvdisplay extends StatefulWidget {
  const Cvdisplay({super.key});

  @override
  State<Cvdisplay> createState() => _CvdisplayState();
}

class _CvdisplayState extends State<Cvdisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your CV '), backgroundColor: Colors.blueGrey),
      body: Row(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: ListView.builder(
              itemCount: cvList.length,
              itemBuilder: (context, index) {
                return cvList.isempty ? Center(
                  child:  Text('Empty')):
                  Row(

                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
