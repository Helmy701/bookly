// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:bookly_app/core/theming/font_weight_helper.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/view/widgets/book_action_buttons.dart';
import 'package:bookly_app/features/home/view/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/view/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/view/widgets/rating.dart';
import 'package:bookly_app/features/home/view/widgets/similar_books_list_view.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

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
            child: CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            bookModel.volumeInfo.title ?? '',
            style: Styles.font30RegularGTSectraFine,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            textScaler: const TextScaler.linear(1),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            bookModel.volumeInfo.authors?[0] ?? '',
            style: Styles.font18MediumWithOpacity,
          ),
          SizedBox(
            height: 15.h,
          ),
          const Rating(),
          SizedBox(
            height: 35.h,
          ),
          BookActionButtons(bookModel: bookModel),
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
