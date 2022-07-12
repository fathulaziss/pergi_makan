import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pergi_makan/shared/constants/styles.dart';
import 'package:pergi_makan/shared/widgets/cards/card_rounded.dart';

class TabbarSubMenu extends StatelessWidget {
  const TabbarSubMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40.h,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 1.h,
              color: AppColors.greyColor.withOpacity(0.5),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Makanan', style: TextStyles.blackNormal),
                      CardRounded(
                        width: MediaQuery.of(context).size.width / 10,
                        height: 3.h,
                        backgroundColor: AppColors.primaryColor,
                      )
                    ],
                  ),
                ),
                const Expanded(child: SizedBox()),
                const Expanded(child: SizedBox()),
                const Expanded(child: SizedBox()),
                const Expanded(child: SizedBox()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
