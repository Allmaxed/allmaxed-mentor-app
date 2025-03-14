import 'package:flutter/gestures.dart';
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

  Padding bottomNavText({
    required String preText,
    required String buttonText,
    required GestureRecognizer route,
    double preTextSize = 18,
    double buttonTextSize = 20,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              // text: "Not a Mentor Yet? ",
              text: preText,
              style: TextStyle(
                fontFamily: 'Poligon',
                fontSize: preTextSize.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff686868),
              ),
              children: [
                TextSpan(
                  // text: "Sign Up",
                  text: buttonText,
                  style: TextStyle(
                    fontFamily: 'Formular',
                    fontSize: buttonTextSize.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff5D42FE),
                  ),
                  recognizer: route,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FontStyles {
  TextStyle formularMedium({required int size, required Color color}) {
    return TextStyle();
  }
}
