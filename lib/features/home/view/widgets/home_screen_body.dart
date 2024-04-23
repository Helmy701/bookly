import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/features/home/view/widgets/Newest_books_List_view.dart';
import 'package:bookly_app/features/home/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/view/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: const CustomAppBar(),
              ),
              const FeaturedBooksListView(),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Text(
                  'BestSeller',
                  style: Styles.font18SemiBold,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
        // I used SliverFillRemain tom make BestSellerList to take expand and take th remaning of screen
        // so that I don't need to make shrink wrap = true
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: const NewestBooksListView(),
          ),
        )
      ],
    );

    // todo I can use it but I will should to make Shrink wrap = true in the BestSellerListView and the not good in performance

    //   return Padding(
    //     padding: EdgeInsets.symmetric(horizontal: 30.w),
    //     child: SingleChildScrollView(
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           const CustomAppBar(),
    //           const BooksListView(),
    //           SizedBox(
    //             height: 50.h,
    //           ),
    //           Text(
    //             'BestSeller',
    //             style: Styles.font18SemiBold,
    //           ),
    //           const SizedBox(
    //             height: 10,
    //           ),
    //           const BestSellerListView()
    //         ],
    //       ),
    //     ),
    //   );
  }
}
