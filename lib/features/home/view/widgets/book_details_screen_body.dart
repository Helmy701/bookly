import 'package:bookly_app/core/theming/font_weight_helper.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/features/home/view/widgets/book_action_buttons.dart';
import 'package:bookly_app/features/home/view/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/view/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/view/widgets/rating.dart';
import 'package:bookly_app/features/home/view/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBookDetailsAppBar(),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 240.h,
            width: 160.w,
            child: const CustomBookImage(
                imageUrl:
                    'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'The Jungle Book',
            style: Styles.font30RegularGTSectraFine,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'Rudyard Kipling',
            style: Styles.font18MediumWithOpacity,
          ),
          SizedBox(
            height: 15.h,
          ),
          const Rating(),
          SizedBox(
            height: 35.h,
          ),
          const BookActionButtons(),
          Expanded(
            child: SizedBox(
              height: 30.h,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.font14Regular.copyWith(
                fontWeight: FontWeightHelper.semiBold,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          const SimilarBooksListView(),
          SizedBox(
            height: 40.h,
          ),
        ],
      ),
    );
  }
}
