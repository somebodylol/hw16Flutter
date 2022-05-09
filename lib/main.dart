import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice16fl/widgets/CustomButton/customButton.dart';
import 'package:practice16fl/widgets/FirstScreen/firstScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}
