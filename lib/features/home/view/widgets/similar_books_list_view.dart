import 'package:bookly_app/features/home/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 112.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: SizedBox(width: 70.h, child: const CustomBookImage()),
          );
        }),
      ),
    );
  }
}
