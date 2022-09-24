import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:profile/pages/show_data.dart';
import 'package:profile/provider/app_state.dart';
import 'package:provider/provider.dart';

class AddData extends StatelessWidget {
  const AddData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<AppState>(builder: (context, value, child) {
      return ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: value.info.name,
                decoration: const InputDecoration(labelText: "name"),
              )),
          Card(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: value.info.age,
                decoration: const InputDecoration(labelText: "age"),
              )),
          Card(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: value.info.number,
                decoration: const InputDecoration(labelText: "number"),
              )),
          Card(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: value.info.email,
                decoration: const InputDecoration(labelText: "email"),
              )),
          Card(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: value.info.hobby,
                decoration: const InputDecoration(labelText: "hobby"),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  EasyLoading.show(status: "Please wait");
                  bool req = value.info.checkreq();
                  if (req) {
                    EasyLoading.showSuccess("success");
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShowData()),
                        (route) => false);
                  }
                },
                child: const Text("Enter")),
          )
        ],
      );
    }));
  }
}
