import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mentors_app/app/modules/consts/text_sizes.dart';
import 'package:mentors_app/app/modules/consts/textfield_types.dart';
import 'package:mentors_app/app/modules/home/widgets/buttons.dart';
import 'package:mentors_app/app/modules/sign_up/controllers/sign_up_controller.dart';
import 'package:mentors_app/app/routes/app_pages.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 30.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: SizedBox()),
              CircleAvatar(
                radius: 60.w,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 58.w,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/login-vector.png'),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              textTitle.logoTitle('Allmax\'d'),
              SizedBox(
                height: 30.h,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 17.h,
                runSpacing: 17.h,
                children: [
                  TextFieldDottedBorder(
                      controller: controller.nameController,
                      hintText: 'Full Name'),
                  TextFieldDottedBorder(
                      controller: controller.emailController,
                      hintText: 'Email ID'),
                  TextFieldDottedBorder(
                      controller: controller.phoneController,
                      hintText: 'Phone No.'),
                  TextFieldDottedBorder(
                      controller: controller.referrelController,
                      hintText: 'Referral Code (Optional)'),
                  Padding(
                    padding: EdgeInsets.only(top: 18.h),
                    child: AuthButton(onPressed: () {}, buttonTitle: 'Sign Up'),
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
              RichText(
                text: TextSpan(
                  text: "Already a Mentor? ",
                  style: TextStyle(
                    fontFamily: 'Poligon',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff686868),
                  ),
                  children: [
                    TextSpan(
                      text: "Login",
                      style: TextStyle(
                        fontFamily: 'Formular',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5D42FE),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.toNamed(Routes.LOGIN),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
