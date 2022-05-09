import 'package:flutter/material.dart';

class UserMainInfo extends StatelessWidget {
  final String name;
  final String age;
  const UserMainInfo({
    required this.name,
    required this.age,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 32,
          ),
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: Color(0xff0099FF),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.016),
        Text(
          name,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Color(0xff000000),
          ),
        ),
        Spacer(),
        Text(
          age,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Color(0xffC4DAF1),
          ),
        ),
      ],
    );
  }
}