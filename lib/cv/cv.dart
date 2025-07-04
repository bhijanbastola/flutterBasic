// import 'dart:io';
import 'dart:convert';
class Cv {

  final String firstName;
  final String middleName;
  final String lastName;
  final String address;
  final String age;
  final String dateTime;
  bool isMarried=false;
  final String ninNumber ;
  final String phoneNumber;

  Cv({
    required this.firstName,
    required this.lastName,
    required this.middleName,
    required this.address,
    required this.age,
    required this.dateTime,
    required this.phoneNumber,
    required this.ninNumber
  });

    Map<String, dynamic> toMap() {
    return {'firstName':firstName , 
    'middleName':middleName,
    'lastName':lastName,
    'address':address,
    'age':age,
    'dateTime':dateTime,
    'phoneNumber':phoneNumber,
    'ninNumber':ninNumber,
    

    };
  }

  factory Cv.fromMap(Map<String, dynamic> map) {
    return Cv(firstName: map['firstName'], middleName: map['middleName'],lastName: map['lastName'],address: map['address'],age:map['age'],dateTime: map['dateTime'],ninNumber: map['ninNumber'],phoneNumber: map['phoneNumber']);
  }
  

  String toJson() {
    return jsonEncode(toMap());
  }

  factory Cv.fromJson(String json) {
    return Cv.fromMap(jsonDecode(json));
  }

  
}
