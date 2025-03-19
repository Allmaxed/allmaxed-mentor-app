// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';
import 'package:mentors_app/app/data/consts/token.dart';
import 'package:mentors_app/app/modules/sign_up/views/profile_details_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/views/sign_up_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static String get INITIAL =>
      (!storageService.hasToken()) ? Routes.SIGN_UP : Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const ProfileDetailsView(),
      binding: SignUpBinding(),
    ),
  ];
}
