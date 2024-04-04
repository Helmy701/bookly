import 'package:bookly_app/core/helper/assets.dart';
import 'package:bookly_app/core/routes/routes.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/features/home/view/widgets/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(Routes.bookDetailsScreen),
      child: SizedBox(
        height: 115.h,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 70 / 105,
              child: Container(
                // width: MediaQuery.of(context).size.width,
                // width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsPaths.testImage1),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.font20RegularGTSectraFine,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    'J.K. Rowling',
                    style: Styles.font14Regular,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      Text(
                        '19.99 €',
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
      ),
    );
  }
}
