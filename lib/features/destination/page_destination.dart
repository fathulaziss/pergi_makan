import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pergi_makan/features/destination/components/button_action.dart';
import 'package:pergi_makan/features/destination/components/card_content.dart';
import 'package:pergi_makan/features/destination/components/card_food.dart';
import 'package:pergi_makan/features/destination/components/tabbar_sub_menu.dart';
import 'package:pergi_makan/shared/constants/styles.dart';
import 'package:pergi_makan/shared/models/model_destination.dart';
import 'package:pergi_makan/shared/widgets/cards/card_rounded.dart';

class PageDestination extends StatelessWidget {
  const PageDestination({
    Key? key,
    required this.modelDestination,
  }) : super(key: key);

  final ModelDestination modelDestination;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Stack(
        children: [
          Image.asset(
            modelDestination.imageDetail,
            fit: BoxFit.fill,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2.5,
          ),
          CardContent(
            child: Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: Text(
                    modelDestination.name,
                    style:
                        TextStyles.blackBold.copyWith(fontSize: FontSizes.s18),
                  ),
                ),
                verticalSpace(5.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColors.primaryColor,
                        size: 24.w,
                      ),
                      Expanded(
                        child: Text(
                          modelDestination.location,
                          style: TextStyles.greyNormal
                              .copyWith(fontSize: FontSizes.s12),
                        ),
                      )
                    ],
                  ),
                ),
                verticalSpace(5.h),
                const TabbarSubMenu(),
                SizedBox(
                  width: double.infinity,
                  height: 60.h,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding:
                        EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 4,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                    ),
                    itemCount: modelDestination.tags.length,
                    itemBuilder: (context, index) {
                      if (modelDestination.tags[index] == 'Soto Banjar') {
                        return CardRounded(
                          margin: EdgeInsets.zero,
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          backgroundColor: AppColors.primaryColor,
                          borderRadius: 6.w,
                          shadow: Shadows.shadowsUp,
                          child: Text(
                            modelDestination.tags[index],
                            textAlign: TextAlign.center,
                            style: TextStyles.whiteBold
                                .copyWith(fontSize: FontSizes.s10),
                          ),
                        );
                      } else {
                        return CardRounded(
                          margin: EdgeInsets.zero,
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          backgroundColor: AppColors.primaryColor,
                          borderRadius: 6.w,
                          child: Text(
                            modelDestination.tags[index],
                            textAlign: TextAlign.center,
                            style: TextStyles.whiteNormal
                                .copyWith(fontSize: FontSizes.s10),
                          ),
                        );
                      }
                    },
                  ),
                ),
                Expanded(
                  child: CardRounded(
                    margin:
                        EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    width: double.infinity,
                    shadow: Shadows.shadowsUp,
                    backgroundColor: AppColors.greyColor2,
                    child: Flex(
                      direction: Axis.vertical,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Text(
                            'Soto Banjar',
                            style: TextStyles.greenBold
                                .copyWith(fontSize: FontSizes.s16),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: modelDestination.foods.length,
                            itemBuilder: (context, index) {
                              return CardFood(
                                modelFood: modelDestination.foods[index],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const ButtonAction(),
        ],
      ),
    );
  }
}
