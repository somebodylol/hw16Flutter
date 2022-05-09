import 'package:flutter/material.dart';

class UserInfoText extends StatelessWidget {
  final String? icon;
  final bool isHaveIcon;
  final String info;
  final String info1;
  const UserInfoText({
    Key? key,
    required this.info,
    required this.info1,
    this.icon,
    this.isHaveIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              info,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          isHaveIcon
              ? Expanded(
                  flex: 7,
                  child: Row(
                    children: [
                      Image.asset(icon!),
                      Text(
                        info1,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )
              : Expanded(
                  flex: 7,
                  child: Text(
                    info1,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
        ],
      ),
    );
  }
}
