import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice16fl/main.dart';
import 'package:practice16fl/widgets/CustomButton/customButton.dart';
import 'package:practice16fl/widgets/CustomTextField/customTextField.dart';
import 'package:practice16fl/widgets/ThirdScreen/thirdScreen.dart';

class SecondScreen extends StatelessWidget {
  final String titleText;
  final bool isMan;
  const SecondScreen({Key? key, required this.isMan, required this.titleText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController ageController = TextEditingController();
    TextEditingController imageController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          titleText.toUpperCase(),
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff000000),
          ),
        ),
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Color(0xff0099FF),
              ),
              Text(
                'Back',
                style: TextStyle(color: Color(0xff0099FF), fontSize: 14),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 44),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomTextField(
              labelText: "Your name",
              controller: nameController,
            ),
            CustomTextField(
              textInputFormatter: FilteringTextInputFormatter.digitsOnly,
              labelText: "age",
              isNumberKey: true,
              controller: ageController,
              inputType: TextInputType.phone,
            ),
            CustomTextField(
              labelText: "Image url",
              controller: imageController,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1160,
            ),
            CustomButton(
              text: 'Next',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdScreen(
                      imageUrl: imageController.text,
                      profileAge: ageController.text,
                      profileName: nameController.text,
                      isMan: isMan,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
