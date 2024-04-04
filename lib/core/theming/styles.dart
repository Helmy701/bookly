import 'package:bookly_app/core/helper/constants.dart';
import 'package:bookly_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static TextStyle font18SemiBold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font18MediumWithOpacity = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.white.withOpacity(.7),
    fontStyle: FontStyle.italic,
  );
  static TextStyle font20RegularGTSectraFine = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.regular,
    // fontFamily: kGTSectraFine,
  );
  static TextStyle font30RegularGTSectraFine = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeightHelper.regular,
    // fontFamily: kGTSectraFine,
  );
  static TextStyle font14Regular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font20Bold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font16Medium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
  );
}
