import 'package:bookly_app/core/helper/assets.dart';
import 'package:bookly_app/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(Routes.bookDetailsScreen),
      child: Container(
        // width: MediaQuery.of(context).size.width,
        // width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsPaths.testImage1),
          ),
        ),
      ),
    );
  }
}
