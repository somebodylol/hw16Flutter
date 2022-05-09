import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice16fl/main.dart';
import 'package:practice16fl/widgets/CustomLabelText/customLabelText.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final TextInputType? inputType;
  final TextInputFormatter? textInputFormatter;
  final bool? isNumberKey;
  const CustomTextField({
    this.inputType,
    required this.controller,
    required this.labelText,
    Key? key,
    this.textInputFormatter,
    this.isNumberKey = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        children: [
          CustomLabelText(
            labelText: labelText,
          ),
          SizedBox(height: 36),
          TextField(
            keyboardType:
                isNumberKey! ? TextInputType.number : TextInputType.text,
            inputFormatters: <TextInputFormatter>[
              textInputFormatter ??
                  FilteringTextInputFormatter.singleLineFormatter
            ],
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff000000),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.0443),
        ],
      ),
    );
  }
}