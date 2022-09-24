import 'package:flutter/cupertino.dart';
import 'package:profile/data/user_data.dart';


class AppState extends ChangeNotifier {
  UserData info = UserData(
      name: TextEditingController(),
      age: TextEditingController(),
      number: TextEditingController(),
      email: TextEditingController(),
      hobby: TextEditingController());
}
