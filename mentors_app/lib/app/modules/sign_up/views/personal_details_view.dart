import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mentors_app/app/modules/consts/form_validator.dart';
import 'package:mentors_app/app/modules/consts/text_sizes.dart';
import 'package:mentors_app/app/modules/sign_up/controllers/signup_details_controller.dart';

class PersonalDetailsView extends GetView<SignupDetailsController>
    with FormValidatorMixin {
  const PersonalDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 35.w,
          ),
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Image.asset(
                  'assets/images/logo-white-icon.png',
                  width: 200,
                ),
                SizedBox(
                  height: 10.h,
                ),
                FontTypes().logoTitle('Allmax\'d'),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
