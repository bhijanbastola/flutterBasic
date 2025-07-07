//import './'
import 'package:flutter/foundation.dart';

class userProvider extends ChangeNotifier {
  String firstName;
  String middleName;
  String lastName;
  String phoneNumber;
  String address;
  String age;
  String dateTime;
  String ninNumber;

  userProvider({
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.phoneNumber,
    required this.address,
    required this.age,
    required this.dateTime,
    required this.ninNumber,
  });

  void changeData({
    required String firstName,
    required String middleName,
    required String lastName,
    required String phoneNumber,      
    required String address ,
    required String age,   
    required String dateTime,
    required String ninNumber,     
  }) async {
    this.firstName = firstName;
    this.middleName = middleName;
    this.lastName = lastName;
    this.phoneNumber = phoneNumber;
    this.address = address;
    this.age = age;
    this.dateTime = dateTime;
    this.ninNumber = ninNumber;

    
     notifyListeners();
  }
}