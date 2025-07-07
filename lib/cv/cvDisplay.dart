import 'package:flutter/material.dart';
import 'cv.dart';

class Cvdisplay extends StatefulWidget {
  final List<Cv> cvList;
  const Cvdisplay({super.key, required this.cvList});

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
            
            height: 1000,
            width: 1000,
            child: ListView.builder(
              itemCount: widget.cvList.length,
              itemBuilder: (context, index) {
                return widget.cvList.isEmpty
                    ? Center(child: Text('Empty'))
                    : Center(
                        child: Column(
                          children: [
                            Text(
                              'First Name: ${widget.cvList[index].firstName}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyanAccent,
                                //backgroundColor: Colors.red,
                              ),
                            ),
                            SizedBox(height: 20,),

                            Text(
                              'Middle Name:${widget.cvList[index].middleName}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                //backgroundColor: Colors.green,
                              ),
                            ),

                            SizedBox(height: 20,),

                            Text(
                              'Last Name:${widget.cvList[index].lastName}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow,
                                //backgroundColor: Colors.pink,
                              ),
                            ),

                            SizedBox(height: 20,),


                            Text(
                              'Address:${widget.cvList[index].address}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 25, 120, 100),
                               // backgroundColor: const Color.fromARGB(
                                  //255,
                                  //59,
                                  //86,
                                  //98,
                                //),
                              ),
                            ),
                            Text(
                              'Age:${widget.cvList[index].age}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 128, 132, 13),
                                // backgroundColor: const Color.fromARGB(
                                //   255,
                                //   239,
                                //   115,
                                //   115,
                                // ),
                              ),
                            ),
                            Text(
                              'Phone Number:${widget.cvList[index].phoneNumber}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 139, 198, 246),
                                // backgroundColor: const Color.fromARGB(
                                //   255,
                                //   90,
                                //   127,
                                //   91,
                                // ),
                              ),
                            ),
                            Text(
                              'DOB:${widget.cvList[index].dateTime}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 165, 235, 170),
                                // backgroundColor: const Color.fromARGB(
                                //   255,
                                //   113,
                                //   14,
                                //   174,
                                // ),
                              ),
                            ),
                          ],
                        ),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
