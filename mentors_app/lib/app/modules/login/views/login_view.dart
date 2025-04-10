import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentors_app/app/modules/consts/buttons.dart';
import 'package:mentors_app/app/modules/consts/form_validator.dart';
import 'package:mentors_app/app/modules/login/controllers/login_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentors_app/app/modules/consts/text_sizes.dart';
import 'package:mentors_app/app/modules/consts/textfield_types.dart';
import 'package:mentors_app/app/routes/app_pages.dart';

class LoginView extends GetView<LoginController> with FormValidatorMixin {
  const LoginView({super.key});
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
                Image.asset(
                  'assets/images/logo-white-icon.png',
                  width: 200,
                ),
                SizedBox(
                  height: 10.h,
                ),
                FontTypes().logoTitle('Allmax\'d'),
                SizedBox(
                  height: 40.h,
                ),
                Form(
                  key: controller.formKey,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 20.h,
                    runSpacing: 20.h,
                    children: [
                      TextFieldDottedBorder(
                        controller: controller.emailController,
                        hintText: 'Email',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email is required';
                          } else if (!emailValidator(value)) {
                            return 'Enter a valid email id';
                          }
                          return null;
                        },
                      ),
                      TextFieldDottedBorder(
                        controller: controller.passController,
                        hintText: 'Password',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password is required';
                          } else if (!passwordValidator(value)) {
                            return 'Must contain min 8 chars';
                          }
                          return null;
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: AuthButton(
                          onPressed: () {
                            if (controller.formKey.currentState!.validate()) {
                              controller.loginButtonCall(context);
                            }
                          },
                          buttonTitle: Obx(() {
                            return (controller.isLoading.value)
                                ? Transform.scale(
                                    scale: 0.6,
                                    child: const CircularProgressIndicator(
                                      color: Colors.white,
                                      strokeWidth: 2,
                                    ),
                                  )
                                : Text(
                                    'Login',
                                    style: TextStyle(
                                      fontFamily: 'Poligon',
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: FontTypes().bottomNavText(
        preText: "Not a Mentor Yet? ",
        buttonText: "Sign Up",
        route: TapGestureRecognizer()
          ..onTap = () => Get.offNamed(Routes.SIGN_UP),
      ),
    );
  }
}
