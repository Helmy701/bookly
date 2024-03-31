import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/features/home/view/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/view/widgets/books_list_view.dart';
import 'package:bookly_app/features/home/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const BooksListView(),
          SizedBox(
            height: 50.h,
          ),
          Text(
            'BestSeller',
            style: Styles.font18SemiBold,
          ),
          const SizedBox(
            height: 10,
          ),
          const BestSellerListView()
        ],
      ),
    );
  }
}
