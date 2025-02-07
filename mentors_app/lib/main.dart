import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentors_app/app/modules/consts/theme.dart';
import 'app/routes/app_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
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
}
