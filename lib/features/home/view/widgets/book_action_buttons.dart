import 'package:bookly_app/core/theming/colors.dart';
import 'package:bookly_app/core/theming/font_weight_helper.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookActionButtons extends StatelessWidget {
  const BookActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              title: '19.99 €',
              textStyle: Styles.font18SemiBold.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              backGroundColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              onTap: () {},
            ),
          ),
          Expanded(
            child: CustomButton(
              onTap: () {},
              title: 'Free Preview',
              textStyle: Styles.font16Medium.copyWith(
                  fontWeight: FontWeightHelper.semiBold, color: Colors.white),
              backGroundColor: myOrange,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
