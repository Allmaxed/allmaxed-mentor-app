import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SnackbarMessage {
  errorWarning(String message, BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            elevation: 3,
            backgroundColor: const Color(0xffffffff),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 25),
                Text(
                  'Error!!!',
                  style: TextStyle(
                      fontSize: 25.sp,
                      fontFamily: 'Montserrat Bold',
                      color: const Color(0xFFDB1C0E)),
                ),
                const SizedBox(height: 20),
                Text(
                  message,
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: 'Montserrat SemiBold',
                      color: const Color(0xDD0C0C0C)),
                ),
                const SizedBox(height: 20),
                const Divider(
                  color: Colors.black45,
                  thickness: .5,
                  height: .2,
                ),
                InkWell(
                  highlightColor: Colors.grey[200],
                  onTap: () {
                    Get.back();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontFamily: 'Montserrat SemiBold',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  snackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(
            fontFamily: 'Poligon',
            fontSize: 17.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xffF0F0EF),
          ),
        ),
        backgroundColor: Color(0xff1e1e1e),
        duration: Duration(seconds: 4),
      ),
    );
  }
}
