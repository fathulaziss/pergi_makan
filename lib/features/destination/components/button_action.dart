import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pergi_makan/shared/constants/assets.dart';
import 'package:pergi_makan/shared/constants/styles.dart';
import 'package:pergi_makan/shared/widgets/cards/card_rounded.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 54.h, left: 24.w, right: 24.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardRounded(
              backgroundColor: AppColors.whiteColor,
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              shadow: Shadows.shadowsUp,
              width: 27.w,
              height: 27.w,
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                padding: EdgeInsets.only(left: 5.w),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.greyColor,
                  size: 18.w,
                ),
              ),
            ),
            CardRounded(
              width: 27.w,
              height: 27.w,
              shadow: Shadows.shadowsUp,
              backgroundColor: AppColors.whiteColor,
              margin: EdgeInsets.zero,
              padding: EdgeInsets.all(4.w),
              child: Image.asset(AppIcons.icBookMark),
            )
          ],
        ),
      ),
    );
  }
}
