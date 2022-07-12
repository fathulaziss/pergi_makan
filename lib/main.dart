import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pergi_makan/features/onboarding/page_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: ScreenUtilInit(
        designSize: const Size(375, 782),
        builder: (context, widget) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            builder: (context, child) => MediaQuery(
              /// Setting font does not change with system font size
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
              child: child!,
            ),
            home: const PageSplashScreen(),
          );
        },
      ),
    );
  }
}
