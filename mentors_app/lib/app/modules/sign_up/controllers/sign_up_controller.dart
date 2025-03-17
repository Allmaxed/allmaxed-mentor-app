// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentors_app/app/data/providers/register_provider.dart';
import 'package:mentors_app/app/modules/consts/snackbar.dart';
import 'package:mentors_app/app/routes/app_pages.dart';

class SignUpController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController =
      TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  var isLoading = false.obs;
  String formatFullName(String name) {
    return name.trim().split(' ').map((word) {
      if (word.contains('.')) {
        // Handle initials (e.g., "k.p" → "K.P")
        return word
            .split('.')
            .map((part) => part.isNotEmpty
                ? part[0].toUpperCase() + part.substring(1).toLowerCase()
                : '')
            .join('.');
      } else {
        // Capitalize the first letter of normal words
        return word.isNotEmpty
            ? word[0].toUpperCase() + word.substring(1).toLowerCase()
            : '';
      }
    }).join(' ');
  }

  void registerButtonCall(BuildContext context) async {
    isLoading.value = true;
    String formattedName = formatFullName(nameController.text);
    final (bool, String) response = await RegisterProvider().registerApiCall(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        phone: phoneController.text.trim(),
        name: formattedName);
    isLoading.value = false;
    if (response.$1) {
      SnackbarMessage().snackBar(response.$2, context);
      Get.toNamed(Routes.HOME);
    } else {
      SnackbarMessage().snackBar('${response.$2}, Try again', context);
    }
  }
}
