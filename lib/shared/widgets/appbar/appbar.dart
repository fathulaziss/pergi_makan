// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pergi_makan/shared/constants/styles.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.leadingIcon,
    required this.title,
    this.color,
    this.colorTitle,
    this.icon,
    this.center,
    this.bottom,
    this.flexibleSpace,
    this.actions,
    this.elevation = 0,
    this.onBackPressed,
    this.useLeading = true,
  }) : super(key: key);

  final Function()? onBackPressed;
  final List<Widget>? actions;
  final Widget? bottom;
  final Widget? center;
  final Color? color;
  final Color? colorTitle;
  final double elevation;
  final Widget? flexibleSpace;
  final Widget? icon;
  final Widget? leadingIcon;
  final String title;
  final bool useLeading;

  @override
  final Size preferredSize =
      const Size.fromHeight(kToolbarHeight); // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      elevation: widget.elevation,
      backgroundColor: widget.color ?? AppColors.whiteColor,
      leading: widget.useLeading
          ? widget.leadingIcon ??
              IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  color: widget.colorTitle ?? AppColors.blackColor,
                  size: 24.w,
                ),
                onPressed: widget.onBackPressed ?? Get.back,
              )
          : null,
      title: Text(
        widget.title,
        textAlign: TextAlign.center,
        style: TextStyles.greySemiBold.copyWith(
          color: widget.colorTitle ?? AppColors.greyColor,
          fontSize: FontSizes.s22,
        ),
      ),
      actions: widget.actions ??
          <Widget>[
            const SizedBox(),
            Padding(
              padding: EdgeInsets.only(right: Insets.lg),
              child: GestureDetector(
                child: widget.icon ?? Container(),
              ),
            ),
          ],
      centerTitle: true,
    );
  }
}
