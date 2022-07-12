import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pergi_makan/shared/constants/assets.dart';
import 'package:pergi_makan/shared/constants/styles.dart';
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
          icon: Image.asset(AppIcons.icMenu, width: 24.w),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
