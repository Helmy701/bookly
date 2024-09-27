import 'package:bookly_app/core/helper/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.h),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AssetsPaths.logo,
            height: 16.h,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24.r,
              ))
        ],
      ),
    );
  }
}
