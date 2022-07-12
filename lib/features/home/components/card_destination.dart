import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pergi_makan/shared/constants/styles.dart';
import 'package:pergi_makan/shared/models/model_destination.dart';
import 'package:pergi_makan/shared/widgets/cards/card_image.dart';
import 'package:pergi_makan/shared/widgets/cards/card_rounded.dart';

class CardDestination extends StatelessWidget {
  const CardDestination({
    Key? key,
    required this.modelDestination,
    required this.onTap,
  }) : super(key: key);

  final ModelDestination modelDestination;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CardRounded(
        shadow: Shadows.shadowsUp,
        backgroundColor: AppColors.whiteColor,
        margin: EdgeInsets.zero,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: CardRounded(
                margin: EdgeInsets.only(bottom: 10.h),
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                backgroundColor: AppColors.primaryColor,
                borderRadius: 5.w,
                shadow: Shadows.shadowsUp,
                child: Text(
                  'Detail',
                  style:
                      TextStyles.whiteNormal.copyWith(fontSize: FontSizes.s10),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                verticalSpace(10.h),
                CardImage(
                  width: 150.w,
                  height: 90.h,
                  image: modelDestination.image,
                ),
                verticalSpace(5.h),
                Text(
                  modelDestination.name,
                  style: TextStyles.blackBold.copyWith(fontSize: FontSizes.s10),
                ),
                verticalSpace(5.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: AppColors.primaryColor,
                      size: 15.w,
                    ),
                    Expanded(
                      child: Text(
                        modelDestination.location,
                        style: TextStyles.greyNormal
                            .copyWith(fontSize: FontSizes.s9),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
