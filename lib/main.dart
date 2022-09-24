import 'package:flutter/material.dart';
import 'package:profile/pages/add_data.dart';
import 'package:profile/provider/app_state.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(const Practice());
}

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AppState(),
        child: MaterialApp(
          theme: ThemeData.dark(),
          home: const AddData(),
        ));
  }
}
