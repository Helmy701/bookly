// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  final Color backGroundColor;
  final BorderRadius? borderRadius;
  final VoidCallback onTap;
  const CustomButton({
    super.key,
    required this.title,
    required this.textStyle,
    required this.backGroundColor,
    this.borderRadius,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          title,
          style: textStyle,
        ),
      ),
    );
  }
}
