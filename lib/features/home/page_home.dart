import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pergi_makan/features/destination/page_destination.dart';
import 'package:pergi_makan/features/home/components/card_destination.dart';
import 'package:pergi_makan/features/home/components/input_search.dart';
import 'package:pergi_makan/shared/constants/assets.dart';
import 'package:pergi_makan/shared/constants/styles.dart';
import 'package:pergi_makan/shared/others/list_destination.dart';
import 'package:pergi_makan/shared/widgets/appbar/appbar.dart';

class PageHome extends StatelessWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(
        elevation: 0,
        title: 'Search',
        useLeading: true,
        leadingIcon: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: Image.asset(AppIcons.icMenu, width: 20.w),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const InputSearch(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text('Popular',
                  style:
                      TextStyles.blackBold.copyWith(fontSize: FontSizes.s18)),
            ),
            Expanded(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 2.3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                ),
                itemCount: listDestination.length,
                itemBuilder: (context, index) {
                  return CardDestination(
                    modelDestination: listDestination[index],
                    onTap: () => Get.to(() => PageDestination(
                          modelDestination: listDestination[index],
                        )),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
