import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonTitle;
  const AuthButton(
      {super.key, required this.onPressed, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:
            const Color(0xff5D42FE), // Matches the purple button color
        foregroundColor: Colors.white, // Text color
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xff1e1e1e), width: 1.2),
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
        padding: EdgeInsets.symmetric(
            vertical: 12.h, horizontal: 75.w), // Button height
      ),
      child: Text(
        buttonTitle,
        style: TextStyle(
          fontFamily: 'Formular',
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
