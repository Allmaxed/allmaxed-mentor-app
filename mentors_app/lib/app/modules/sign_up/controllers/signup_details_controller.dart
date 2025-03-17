import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupDetailsController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController =
      TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
}
