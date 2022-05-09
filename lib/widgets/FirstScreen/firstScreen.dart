import 'package:flutter/material.dart';
import 'package:practice16fl/main.dart';
import 'package:practice16fl/widgets/CustomButton/customButton.dart';
import 'package:practice16fl/widgets/SecondScreen/secondScreen.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3163,
            ),
            Text(
              'I am',
              style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 36,
            ),
            CustomButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondScreen(
                            isMan: true,
                            titleText: "man",
                          )),
                );
              },
              text: 'Man',
            ),
            SizedBox(
              height: 18,
            ),
            CustomButton(
              text: 'Woman',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondScreen(
                            isMan: false,
                            titleText: "woman",
                          )),
                );
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2325,
            ),
            RichText(
              text: TextSpan(
                text: 'Already have account?' + ' ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: 'Log in',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff0099FF),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}