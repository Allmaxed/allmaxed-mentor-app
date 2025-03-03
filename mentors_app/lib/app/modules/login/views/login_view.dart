import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentors_app/app/modules/home/widgets/buttons.dart';
import 'package:mentors_app/app/modules/login/controllers/login_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentors_app/app/modules/consts/text_sizes.dart';
import 'package:mentors_app/app/modules/consts/textfield_types.dart';
import 'package:mentors_app/app/routes/app_pages.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
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
                alignment: WrapAlignment.center,
                spacing: 20.h,
                runSpacing: 20.h,
                children: [
                  TextFieldDottedBorder(
                      controller: controller.emailController,
                      hintText: 'Email'),
                  TextFieldDottedBorder(
                      controller: controller.passController,
                      hintText: 'Password'),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: AuthButton(onPressed: () {}, buttonTitle: 'Login'),
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
              RichText(
                text: TextSpan(
                  text: "Not a Mentor Yet? ",
                  style: TextStyle(
                    fontFamily: 'Poligon',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff686868),
                  ),
                  children: [
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(
                        fontFamily: 'Formular',
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5D42FE),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.toNamed(Routes.SIGN_UP),
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
