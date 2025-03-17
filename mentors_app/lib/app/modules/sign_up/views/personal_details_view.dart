import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mentors_app/app/modules/consts/buttons.dart';
import 'package:mentors_app/app/modules/consts/form_validator.dart';
import 'package:mentors_app/app/modules/consts/text_sizes.dart';
import 'package:mentors_app/app/modules/consts/textfield_types.dart';
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
                CircleAvatar(
                  radius: 45.w,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 43.w,
                    backgroundColor: Colors.white,
                    backgroundImage:
                        AssetImage('assets/images/login-vector.png'),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                FontTypes().logoTitle('Allmax\'d'),
                SizedBox(
                  height: 30.h,
                ),
                Form(
                  key: controller.formKey,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 17.h,
                    runSpacing: 17.h,
                    children: [
                      TextFieldDottedBorder(
                          controller: controller.nameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Name is required';
                            } else if (!nameValidator(value)) {
                              return 'Enter a valid name';
                            }
                            return null;
                          },
                          hintText: 'Full Name'),
                      TextFieldDottedBorder(
                          controller: controller.emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Email is required';
                            } else if (!emailValidator(value)) {
                              return 'Enter a valid email id';
                            }
                            return null;
                          },
                          hintText: 'Email'),
                      TextFieldDottedBorder(
                          controller: controller.phoneController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Phone no. is required';
                            } else if (!phoneNoValidator(value)) {
                              return 'Enter a valid phone number';
                            }
                            return null;
                          },
                          hintText: 'Phone No.'),
                      TextFieldDottedBorder(
                          controller: controller.passwordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password is required';
                            } else if (!passwordValidator(value)) {
                              return 'Password must contain 8 chars';
                            }
                            return null;
                          },
                          hintText: 'Password'),
                      TextFieldDottedBorder(
                          controller: controller.passwordConfirmController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Confirm Password is required';
                            } else if (!passwordValidator(value)) {
                              return 'Password must contain 8 chars';
                            } else if (value !=
                                controller.passwordController.text) {
                              return 'Password does not match';
                            }
                            return null;
                          },
                          hintText: 'Confirm Password'),
                      Padding(
                        padding: EdgeInsets.only(top: 18.h),
                        child: AuthButton(
                          onPressed: () {
                            if (controller.formKey.currentState!.validate()) {}
                          },
                          buttonTitle: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontFamily: 'Poligon',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
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
    );
  }
}
