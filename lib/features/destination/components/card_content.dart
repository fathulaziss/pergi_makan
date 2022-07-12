import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pergi_makan/shared/constants/styles.dart';

class CardContent extends StatelessWidget {
  const CardContent({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 3.2,
        ),
        padding: EdgeInsets.symmetric(vertical: 20.h),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Corners.xxlRadius,
            topRight: Corners.xxlRadius,
          ),
        ),
        child: child,
      ),
    );
  }
}
