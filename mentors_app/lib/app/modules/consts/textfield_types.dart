// ignore_for_file: must_be_immutable

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldTypes {
  InputDecoration textFieldAuth(String hintText, double padding) {
    return InputDecoration(
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.white, width: .8),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.white, width: .8),
      ),
      contentPadding: EdgeInsets.all(padding),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.white, width: .8),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.white, width: .8),
      ),
      hintText: hintText,
      errorStyle: TextStyle(
        fontFamily: 'Formular',
        fontSize: 13.sp,
        height: 2,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: TextStyle(
        fontFamily: 'Formular',
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: Color(0xff3E1EFF),
      ),
    );
  }
}

class TextFieldDottedBorder extends StatelessWidget {
  final TextEditingController controller;
  FormFieldValidator<String>? validator;
  final String hintText;
  final double padding;
  TextFieldDottedBorder(
      {super.key,
      this.padding = 15.0,
      required this.controller,
      required this.hintText,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      color: Color(0xFF1E1E1E), // Hex color #1E1E1E
      strokeWidth: 1, // Thickness
      radius: Radius.circular(10), // Border radius
      dashPattern: [6, 3], // Dash gap pattern
      child: TextFormField(
        keyboardType: (hintText == 'Phone No.')
            ? TextInputType.phone
            : (hintText == 'Email')
                ? TextInputType.emailAddress
                : TextInputType.text,
        controller: controller,
        cursorColor: Color(0xff5D42FE),
        decoration: TextFieldTypes().textFieldAuth(hintText, padding),
        validator: validator,
        obscureText: (hintText == 'Confirm Password') ? true : false,
        style: TextStyle(
          fontFamily: 'Formular',
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
          color: Color(0xff3E1EFF),
        ),
      ),
    );
  }
}
