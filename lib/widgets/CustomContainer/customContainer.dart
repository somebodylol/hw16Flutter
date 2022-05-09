import 'package:flutter/material.dart';
import 'package:practice16fl/main.dart';
import 'package:practice16fl/widgets/BottomNavigationItem/bottomNavigationItem.dart';

class CustomContainer extends StatelessWidget {
  final bool isMan;
  const CustomContainer({
    required this.isMan,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 83,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            offset: Offset(0, 0),
            spreadRadius: 0,
            color: Color.fromRGBO(0, 69, 115, 0.1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: BottomNavigationItem(
              isImage: false,
              itemIcon: Icons.menu,
              itemText: 'Menu',
            ),
          ),
          isMan
              ? Expanded(
                  child: BottomNavigationItem(
                    isImage: true,
                    itemImage: 'assets/images/ladies.png',
                    itemText: 'Ladies',
                  ),
                )
              : SizedBox(),
          Expanded(
            child: BottomNavigationItem(
              isImage: false,
              itemIcon: Icons.chat_outlined,
              itemText: 'Chat',
            ),
          ),
          Expanded(
            child: BottomNavigationItem(
              isImage: true,
              itemImage: 'assets/images/profileAvatar.png',
              itemText: 'Profile',
            ),
          ),
        ],
      ),
    );
  }
}