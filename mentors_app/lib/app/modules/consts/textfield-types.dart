import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldTypes {
  InputDecoration textFieldAuth(String hintText) {
    return InputDecoration(
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Color(0xffCBCBCB), width: .8),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Color(0xffCBCBCB), width: .8),
      ),
      contentPadding: const EdgeInsets.all(19),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Color(0xffCBCBCB), width: .8),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Color(0xffCBCBCB), width: .8),
      ),
      hintText: hintText,
      hintStyle: TextStyle(
        fontFamily: 'Formular',
        fontSize: 13.sp,
        fontWeight: FontWeight.w500,
        color: Color(0xff3E1EFF),
      ),
    );
  }
}

final textFieldTypes = TextFieldTypes();
