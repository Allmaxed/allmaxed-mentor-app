import 'package:get/get.dart';
import 'package:mentors_app/app/modules/sign_up/controllers/sign_up_controller.dart';
import 'package:mentors_app/app/modules/sign_up/controllers/signup_details_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupDetailsController>(
      () => SignupDetailsController(),
    );
    Get.lazyPut<SignUpController>(
      () => SignUpController(),
    );
  }
}
