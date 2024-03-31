import 'package:bookly_app/core/helper/assets.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                    const Icon(
                      FontAwesomeIcons.solidStar,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 6.3.w,
                    ),
                    Text(
                      '4.8',
                      style: Styles.font16Medium,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      '(245)',
                      style: Styles.font14Regular.copyWith(
                        color: const Color(0xff707070),
                      ),
                    )
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
