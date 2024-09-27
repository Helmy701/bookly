import 'package:bookly_app/features/home/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: SizedBox(width: 150.w, child: const CustomBookImage()),
          );
        }),
      ),
    );
  }
}
