import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/utils/constants/font_weight.dart';

class TextStyles {
  TextStyles._();
  static TextStyle secondaryTextMedium12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightManager.medium,
    color: ColorsManager.secondaryText,
  );
  static TextStyle secondaryTextBold12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightManager.bold,
    color: ColorsManager.secondaryText,
  );
  static TextStyle secondaryTextBold14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.bold,
    color: ColorsManager.secondaryText,
  );
  static TextStyle blueTextExtraBold14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.extraBold,
    color: ColorsManager.blueText,
  );
  static TextStyle blueTextMedium14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.medium,
    color: ColorsManager.blueText,
  );

  static TextStyle orangeTextMedium14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.medium,
    color: ColorsManager.orangeText,
  );
  static TextStyle orangeTextExtraBold14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.extraBold,
    color: ColorsManager.orangeText,
  );
  static TextStyle primaryTextMedium16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.medium,
    color: ColorsManager.primaryText,
  );
  static TextStyle primaryTextBold16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.bold,
    color: ColorsManager.primaryText,
  );
  static TextStyle secondaryTextMedium16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.medium,
    color: ColorsManager.secondaryText,
  );
  static TextStyle primaryTextSemiBold18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightManager.semiBold,
    color: ColorsManager.primaryText,
  );
  static TextStyle primaryTextBold18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightManager.bold,
    color: ColorsManager.primaryText,
  );
  static TextStyle whiteBold18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightManager.bold,
    color: ColorsManager.white,
  );
}
