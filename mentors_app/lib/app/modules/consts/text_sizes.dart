import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FontTypes {
  Text logoTitle(String title) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontFamily: 'PP Monument Extended',
          fontWeight: FontWeight.w900,
          fontSize: 31.sp,
          letterSpacing: -2),
    );
  }
}

final FontTypes textTitle = FontTypes();

class FontStyles {
  TextStyle formularMedium({required int size, required Color color}) {
    return TextStyle();
  }
}
