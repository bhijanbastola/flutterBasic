import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo/cv/cv.dart';
import 'package:todo/cv/cvDisplay.dart';
import 'package:todo/cv/provider/provider.dart';
import 'package:todo/helpers/sharedprefrences.dart';

class CvTemplate extends StatefulWidget {
  const CvTemplate({super.key});

  @override
  State<CvTemplate> createState() => CvTemplateState();
}

class CvTemplateState extends State<CvTemplate> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController middleNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController dateTimeController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController marriedController = TextEditingController();

  final TextEditingController ninNumberController = TextEditingController();
  //bool isMarriedController = false;

  List<Cv> cvList = [];
  @override
  void initState() {
    cvList = SharedPrefrencesHelper.loadCv(
      SharedPrefrencesHelper.stringListKey,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Please fill up your CV"),
        backgroundColor: Colors.blueGrey,
      ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 100,
                    width: 300,
                    child: TextFormField(
                      controller: firstNameController,
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 50),
                Expanded(
                  child: SizedBox(
                    height: 100,
                    width: 300,
                    child: TextFormField(
                      controller: middleNameController,
                      decoration: InputDecoration(
                        hintText: 'Middle Name',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 50),
                Expanded(
                  child: SizedBox(
                    height: 100,
                    width: 300,
                    child: TextFormField(
                      controller: lastNameController,
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            //children: [
            //Padding(padding: EdgeInsets.all(0),
            //child: Row(
            children: [
              SizedBox(
                height: 100,
                width: 300,
                child: TextFormField(
                  controller: addressController,
                  decoration: InputDecoration(
                    hintText: 'Address',
                    prefixIcon: Icon(Icons.location_on_sharp),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              SizedBox(width: 50),
              Expanded(
                child: SizedBox(
                  height: 100,
                  width: 300,
                  child: TextFormField(
                    controller: ageController,
                    decoration: InputDecoration(
                      hintText: 'Age',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),

              SizedBox(width: 50),
              Expanded(
                child: SizedBox(
                  height: 100,
                  width: 300,
                  child: TextFormField(
                    controller: ninNumberController,
                    decoration: InputDecoration(
                      hintText: 'xx-xx-xxxxx',
                      prefixIcon: Icon(Icons.badge),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),

              //]
              //),
              // ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 50),
              Expanded(
                child: SizedBox(
                  height: 100,
                  width: 300,
                  child: TextFormField(
                    controller: phoneNumberController,
                    decoration: InputDecoration(
                      hintText: '+977 xxxxxxxxxx',
                      prefixIcon: Icon(Icons.contact_emergency),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),

              SizedBox(width: 50),
              Expanded(
                child: SizedBox(
                  height: 100,
                  width: 300,
                  child: TextFormField(
                    controller: dateTimeController,
                    decoration: InputDecoration(
                      hintText: 'dd/mm/yyyy',
                      prefixIcon: Icon(Icons.date_range),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // context.read<userProvider>().changeData(
                    //   firstname: firstNameController.text,
                    // );
                    FocusManager.instance.primaryFocus?.unfocus();
                    

                    cvList.add(
                      Cv(
                        firstName: firstNameController.text.trim(),
                        lastName: lastNameController.text.trim(),
                        middleName: middleNameController.text.trim(),
                        address: addressController.text.trim(),
                        age: ageController.text.trim(),
                        dateTime: dateTimeController.text.trim(),
                        phoneNumber: phoneNumberController.text.trim(),
                        ninNumber: ninNumberController.text.trim(),
                      ),
                    );
                    //setprefrences
                    SharedPrefrencesHelper.saveCv(
                      SharedPrefrencesHelper.stringListKey,
                      cvList,
                    );
                    //
                    firstNameController.clear();
                    middleNameController.clear();
                    lastNameController.clear();
                    addressController.clear();
                    ageController.clear();
                    dateTimeController.clear();
                    ninNumberController.clear();
                    phoneNumberController.clear();
                  });
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Cvdisplay(cvList: cvList),
                    ),
                  );
                },
                child: Text("Submit", selectionColor: Colors.lightGreenAccent),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
