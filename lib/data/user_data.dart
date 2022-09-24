import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class UserData {
  TextEditingController name;
  TextEditingController age;
  TextEditingController number;
  TextEditingController email;
  TextEditingController hobby;
  UserData(
      {required this.name,
      required this.age,
      required this.number,
      required this.email,
      required this.hobby});

  bool checkreq() {
    if (number.text.length != 10) {
      EasyLoading.showError("number not valid");
      return false;
    } else if (name.text.isEmpty ||
        age.text.isEmpty ||
        number.text.isEmpty ||
        email.text.isEmpty ||
        hobby.text.isEmpty) {
      EasyLoading.showError("fill all required details");
      return false;
    }
    return true;
  }
}
