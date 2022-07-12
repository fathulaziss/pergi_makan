import 'package:flutter/material.dart';
import 'package:pergi_makan/shared/constants/styles.dart';

class CardRounded extends StatelessWidget {
  const CardRounded({
    Key? key,
    this.child,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.borderRadius,
    this.backgroundColor,
    this.outlineColor,
    this.shadow,
  }) : super(key: key);

  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? borderRadius;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? outlineColor;
  final List<BoxShadow>? shadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin ?? EdgeInsets.symmetric(horizontal: Insets.xs),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        border: Border.all(width: 1, color: outlineColor ?? Colors.transparent),
        borderRadius: borderRadius != null
            ? BorderRadius.all(Radius.circular(borderRadius!))
            : Corners.xlBorder,
        boxShadow: shadow ?? Shadows.none,
      ),
      padding: padding ?? EdgeInsets.all(Insets.med),
      child: child ?? const SizedBox(),
    );
  }
}
