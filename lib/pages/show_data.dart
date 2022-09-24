import 'package:flutter/material.dart';
import 'package:profile/provider/app_state.dart';
import 'package:provider/provider.dart';

class ShowData extends StatelessWidget {
  const ShowData({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, value, child) {
        return Scaffold(
            appBar: AppBar(
              title: const Center(child: Text("User Details")),
            ),
            body: ListView(
              children: [
                Card(
                    margin: const EdgeInsets.all(20),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 08,
                      child: Wrap(
                        spacing: 10,
                        direction: Axis.vertical,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "name :",
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                value.info.name.text,
                                style: const TextStyle(fontSize: 24),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                "age :",
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                value.info.age.text,
                                style: const TextStyle(fontSize: 24),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                "number :",
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                value.info.number.text,
                                style: const TextStyle(fontSize: 24),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                "email :",
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                value.info.email.text,
                                style: const TextStyle(fontSize: 24),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                "hobby :",
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                value.info.hobby.text,
                                style: const TextStyle(fontSize: 24),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ],
            ));
      },
    );
  }
}
