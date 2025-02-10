import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mentors_app/app/modules/consts/text-sizes.dart';
import 'package:mentors_app/app/modules/consts/textfield-types.dart';
import 'package:mentors_app/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 35.w),
          shrinkWrap: true,
          children: [
            CircleAvatar(
              radius: 66.w,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 64.w,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/login-vector.png'),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            textTitle.logoTitle('Allmax\'d'),
            SizedBox(
              height: 40.h,
            ),
            Wrap(
              spacing: 25.h,
              runSpacing: 25.h,
              children: [
                TextFieldDottedBorder(
                    controller: controller.emailController, hintText: 'Email'),
                TextFieldDottedBorder(
                    controller: controller.passController,
                    hintText: 'Password'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// CircleAvatar(
//                 radius: 64.w,
//                 backgroundColor: Colors.white,
//                 backgroundImage: AssetImage('assets/images/login-vector.png'),
//               )
