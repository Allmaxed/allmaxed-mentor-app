import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:mentors_app/app/routes/app_pages.dart';

final appTheme = ThemeData(
  primaryColor: Color(0xff5D42FE),
  textTheme: TextTheme(
    bodyMedium: TextStyle(fontSize: 15.sp),
    bodyLarge: TextStyle(fontSize: 20.sp),
    bodySmall: TextStyle(fontSize: 10.sp),
  ),
  fontFamily: 'Formular',
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      padding: WidgetStateProperty.all(EdgeInsets.zero),
      overlayColor:
          WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
        if (states.contains(WidgetState.pressed)) {
          return Color(0xff5D42FE);
        }
        return Colors.transparent;
      }),
    ),
  ),
);

class Themes {
  final appBarThemeLight = ThemeData.light().appBarTheme.backgroundColor;
}
