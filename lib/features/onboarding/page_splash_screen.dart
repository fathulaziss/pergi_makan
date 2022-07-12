import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pergi_makan/features/home/page_home.dart';
import 'package:pergi_makan/shared/constants/assets.dart';
import 'package:pergi_makan/shared/constants/styles.dart';

class PageSplashScreen extends StatelessWidget {
  const PageSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAll(() => const PageHome(), transition: Transition.zoom);
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.imgSplashScreen, width: 150.w),
            Text(
              'Pergi Makan\nBanjarmasin',
              textAlign: TextAlign.center,
              style: TextStyles.blackSemiBold.copyWith(fontSize: FontSizes.s20),
            )
          ],
        ),
      ),
    );
  }
}
