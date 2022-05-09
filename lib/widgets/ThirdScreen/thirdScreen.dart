import 'package:flutter/material.dart';
import 'package:practice16fl/main.dart';
import 'package:practice16fl/widgets/AllInfo/allInfo.dart';
import 'package:practice16fl/widgets/CustomContainer/customContainer.dart';
import 'package:practice16fl/widgets/userMainInfo.dart';

class ThirdScreen extends StatelessWidget {
  final bool isMan;
  final String imageUrl;
  final String profileName;
  final String profileAge;
  const ThirdScreen({
    Key? key,
    required this.isMan,
    this.imageUrl =
        "https://cdn1.vectorstock.com/i/1000x1000/23/70/man-avatar-icon-flat-vector-19152370.jpg",
    this.profileName = "Error",
    this.profileAge = "Error",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4618,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              right: 23,
              bottom: 12,
            ),
            child: UserMainInfo(
              name: profileName,
              age: '$profileAge y.o.',
            ),
          ),
          isMan
              ? AllInfo(
                  location: 'Belarus, Baranovichi',
                  locationImage: 'assets/images/russia_flag.png',
                  lagnuages: 'Spanish',
                  languageImage: 'assets/images/russia_flag.png',
                  educationInfo: 'University degree',
                  jobInfo: 'Museum worker, lecturer',
                  zodiacInfo: 'Pisces',
                  zodiacImage: 'assets/images/fish_emoji.png',
                  heightPerson: '154 cm (5\'05\"")',
                  eyeColor: 'Green',
                  hairColor: 'Redhead',
                  isSmoker: true,
                )
              : AllInfo(
                  location: 'France, Lion',
                  locationImage: 'assets/images/france_flag.png',
                  lagnuages: 'English',
                  languageImage: 'assets/images/GB.png',
                  educationInfo: 'University degree',
                  jobInfo: 'Museum worker, lecturer',
                  zodiacInfo: 'Pisces',
                  zodiacImage: 'assets/images/fish_emoji.png',
                  heightPerson: '154 cm (5\'05\"")',
                  eyeColor: 'Green',
                  hairColor: 'Redhead',
                  isSmoker: false,
                ),
          SizedBox(height: 63),
          CustomContainer(
            isMan: isMan,
          ),
        ],
      ),
    );
  }
}