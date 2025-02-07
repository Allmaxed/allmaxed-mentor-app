import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextTitle {
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

final textTitle = TextTitle();
