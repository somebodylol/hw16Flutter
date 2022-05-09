import 'package:flutter/material.dart';

class CustomLabelText extends StatelessWidget {
  String labelText;
  CustomLabelText({
    required this.labelText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      labelText,
      style: TextStyle(
        color: Color(0xff000000),
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}