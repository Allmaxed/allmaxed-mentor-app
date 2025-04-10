import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mentors_app/app/modules/consts/text_sizes.dart';
import 'package:mentors_app/app/modules/sign_up/controllers/sign_up_controller.dart';
import 'package:mentors_app/app/modules/sign_up/widgets/personal_details_widget.dart';

class ProfileDetailsView extends GetView<SignUpController> {
  const ProfileDetailsView({super.key});
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
                  height: 30.h,
                ),
                FontTypes().logoTitle('Allmax\'d'),
                SizedBox(
                  height: 15.h,
                ),
                PersonalDetailsView(
                    profileSubText: 'profileSubText',
                    profileSubTitle: 'profileSubTitle'),
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
