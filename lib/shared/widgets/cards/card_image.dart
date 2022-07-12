import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pergi_makan/shared/constants/styles.dart';

class CardImage extends StatelessWidget {
  const CardImage({
    this.width,
    this.height,
    required this.image,
    Key? key,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 70.w,
      height: height ?? 70.w,
      decoration: BoxDecoration(
        borderRadius: Corners.xlBorder,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
