import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mentors_app/app/modules/consts/buttons.dart';
import 'package:mentors_app/app/modules/consts/form_validator.dart';
import 'package:mentors_app/app/modules/consts/text_sizes.dart';
import 'package:mentors_app/app/modules/sign_up/controllers/signup_details_controller.dart';

class PersonalDetailsView extends GetView<SignupDetailsController>
    with FormValidatorMixin {
  final String profileSubText;
  final String profileSubTitle;
  const PersonalDetailsView(
      {super.key, required this.profileSubText, required this.profileSubTitle});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FontTypes().profileSubText(
            'To setup a mentor profile you have to provide the mentioned details accurately.'),
        SizedBox(
          height: 20.h,
        ),
        FontTypes().profileSubTitle('Professional Details'),
        SizedBox(
          height: 10.h,
        ),
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
              Obx(() {
                return DropdownButtonFormField<String>(
                  value: controller.selectedOccupation.value,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                  ),
                  items: controller.occupations.map((String occupation) {
                    return DropdownMenuItem<String>(
                      value: occupation,
                      child: Text(occupation),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    controller.updateOccupation(newValue!);
                  },
                );
              }),
              Padding(
                padding: EdgeInsets.only(top: 18.h),
                child: AuthButton(
                  onPressed: () {
                    if (controller.formKey.currentState!.validate()) {}
                  },
                  buttonTitle: Text(
                    'Next',
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
    );
  }
}
