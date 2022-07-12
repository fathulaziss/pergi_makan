import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pergi_makan/shared/constants/styles.dart';
import 'package:pergi_makan/shared/models/model_food.dart';
import 'package:pergi_makan/shared/widgets/cards/card_rounded.dart';

class CardFood extends StatelessWidget {
  const CardFood({
    Key? key,
    required this.modelFood,
  }) : super(key: key);

  final ModelFood modelFood;

  @override
  Widget build(BuildContext context) {
    return CardRounded(
      width: double.infinity,
      shadow: Shadows.shadowsUp,
      margin: EdgeInsets.all(10.w),
      padding: EdgeInsets.all(10.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 5.w),
            child: Image.asset(
              modelFood.image,
              fit: BoxFit.cover,
              width: 80.w,
              height: 80.w,
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    modelFood.name,
                    style:
                        TextStyles.blackBold.copyWith(fontSize: FontSizes.s12),
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
                          modelFood.location,
                          style: TextStyles.greyNormal
                              .copyWith(fontSize: FontSizes.s10),
                        ),
                      )
                    ],
                  ),
                  verticalSpace(10.h),
                  SizedBox(
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: CardRounded(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.all(4.w),
                        backgroundColor: AppColors.primaryColor,
                        borderRadius: 5.w,
                        shadow: Shadows.shadowsUp,
                        child: Text(
                          'Detail',
                          style: TextStyles.whiteNormal
                              .copyWith(fontSize: FontSizes.s12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
