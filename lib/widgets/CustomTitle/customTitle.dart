import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  String titleText;
  CustomTitle({
    required this.titleText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xff000000),
      ),
    );
  }
}
