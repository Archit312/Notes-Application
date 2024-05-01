import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String textOnField;
  int lengthChar;
  bool textStyle;
  TextEditingController fieldController;
  CustomTextField({super.key,required this.textOnField, required this.lengthChar,required this.textStyle,required this.fieldController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: fieldController,
      maxLines: null,
      maxLength: lengthChar,
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        border: InputBorder.none,hintText: textOnField,
      ),
      style: textStyle == true ? TextStyle(fontSize: 22,fontWeight: FontWeight.w500) : null,
    );
  }
}
