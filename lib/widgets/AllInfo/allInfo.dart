import 'package:flutter/material.dart';
import 'package:practice16fl/main.dart';
import 'package:practice16fl/widgets/userInfoText.dart';

class AllInfo extends StatelessWidget {
  final String location;
  final String locationImage;
  final String lagnuages;
  final String languageImage;
  final String educationInfo;
  final String jobInfo;
  final String zodiacInfo;
  final String zodiacImage;
  final String heightPerson;
  final String eyeColor;
  final String hairColor;
  final bool isSmoker;
  const AllInfo({
    required this.location,
    required this.locationImage,
    Key? key,
    required this.lagnuages,
    required this.languageImage,
    required this.educationInfo,
    required this.jobInfo,
    required this.zodiacInfo,
    required this.zodiacImage,
    required this.heightPerson,
    required this.eyeColor,
    required this.hairColor,
    required this.isSmoker,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Column(
        children: [
          UserInfoText(
            info: 'Location:',
            info1: location,
            isHaveIcon: true,
            icon: locationImage,
          ),
          UserInfoText(
            info: 'Lagnuages:',
            info1: lagnuages,
            isHaveIcon: true,
            icon: languageImage,
          ),
          UserInfoText(
            info: 'Education:',
            info1: educationInfo,
          ),
          UserInfoText(
            info: 'Job:',
            info1: jobInfo,
          ),
          UserInfoText(
            info: 'Zodiac:',
            info1: zodiacInfo,
            isHaveIcon: true,
            icon: 'assets/images/fish_emoji.png',
          ),
          UserInfoText(
            info: 'Height:',
            info1: heightPerson,
          ),
          UserInfoText(
            info: 'Eye color:',
            info1: eyeColor,
          ),
          UserInfoText(
            info: 'Hair color:',
            info1: hairColor,
          ),
          UserInfoText(
            info: 'Smoking:',
            info1: isSmoker ? 'Yes' : "Non-smoker",
          ),
        ],
      ),
    );
  }
}