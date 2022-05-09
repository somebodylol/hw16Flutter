import 'package:flutter/material.dart';

class BottomNavigationItem extends StatelessWidget {
  final String itemText;
  final IconData? itemIcon;
  final String? itemImage;
  final bool isImage;
  const BottomNavigationItem({
    required this.itemText,
    this.itemIcon,
    Key? key,
    required this.isImage,
    this.itemImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        isImage
            ? Image.asset(itemImage!)
            : Icon(
                itemIcon,
                color: Color(0xff757575),
              ),
        SizedBox(
          height: 5,
        ),
        Text(
          itemText,
          style: TextStyle(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}