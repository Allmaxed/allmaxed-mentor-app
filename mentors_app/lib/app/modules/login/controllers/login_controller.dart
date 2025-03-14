// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentors_app/app/data/providers/login_provider.dart';
import 'package:mentors_app/app/modules/consts/snackbar.dart';
import 'package:mentors_app/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final TextEditingController passController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  var isLoading = false.obs;

  void loginButtonCall(BuildContext context) async {
    isLoading.value = true;
    final (bool, String) response = await LoginProvider()
        .loginApiCall(emailController.text, passController.text);
    isLoading.value = false;
    if (response.$1) {
      SnackbarMessage().snackBar(response.$2, context);
      Get.toNamed(Routes.HOME);
    } else {
      SnackbarMessage().snackBar('${response.$2}, Try again', context);
    }
  }
}
