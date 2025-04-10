import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mentors_app/app/data/consts/ssl_temp.dart';
import 'package:mentors_app/app/modules/consts/theme.dart';
import 'app/routes/app_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await dotenv.load(fileName: ".env");
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown, // Optional: Allow upside-down portrait
  ]).then((_) {
    runApp(
      ScreenUtilInit(
        designSize: const Size(390, 850),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Allmax\'d Mentors',
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
            theme: appTheme,
          );
        },
      ),
    );
  });
}
