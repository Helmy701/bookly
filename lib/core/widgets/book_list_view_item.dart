// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:bookly_app/core/routes/routes.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/view/widgets/rating.dart';

class BookListViewItem extends StatelessWidget {
  final BookModel bookModel;
  const BookListViewItem({
    super.key,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(Routes.bookDetailsScreen),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 70 / 105,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: CachedNetworkImage(
                imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: 30.w,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bookModel.volumeInfo.title ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.font20RegularGTSectraFine,
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  bookModel.volumeInfo.authors?[0] ?? '',
                  style: Styles.font14Regular,
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: Styles.font20Bold,
                    ),
                    const Spacer(),
                    const Rating()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
