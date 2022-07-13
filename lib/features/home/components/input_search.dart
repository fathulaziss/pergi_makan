import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pergi_makan/shared/constants/assets.dart';
import 'package:pergi_makan/shared/constants/styles.dart';
import 'package:pergi_makan/shared/widgets/cards/card_rounded.dart';

class InputSearch extends StatefulWidget {
  const InputSearch({Key? key}) : super(key: key);

  @override
  State<InputSearch> createState() => _InputSearchState();
}

class _InputSearchState extends State<InputSearch> {
  var controllerSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CardRounded(
      width: double.infinity,
      shadow: Shadows.shadowsUp,
      padding: EdgeInsets.symmetric(vertical: 8.h),
      margin: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
      child: TextFormField(
        style: TextStyles.blackNormal.copyWith(fontSize: FontSizes.s16),
        autofocus: false,
        obscureText: false,
        keyboardType: TextInputType.name,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textCapitalization: TextCapitalization.none,
        enableInteractiveSelection: true,
        cursorColor: AppColors.primaryColor,
        controller: controllerSearch,
        onChanged: (value) {},
        decoration: inputDecoration(
          hintText: 'Kalimantan Selatan',
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Image.asset(AppIcons.icSearch, width: 20.w),
          ),
        ),
      ),
    );
  }
}
