// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:bookly_app/core/theming/colors.dart';
import 'package:bookly_app/core/theming/font_weight_helper.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActionButtons extends StatelessWidget {
  const BookActionButtons({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              title: '00.00 €',
              textStyle: Styles.font18SemiBold.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              backGroundColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              onTap: () {},
            ),
          ),
          Expanded(
            child: CustomButton(
              onTap: () async {
                Uri url = Uri.parse(bookModel.volumeInfo.previewLink!);
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Cannot launch the link',
                      ),
                    ),
                  );
                }
                // if (!await launchUrl(url)) {
                //   throw Exception('Could not launch $url');
                // }
              },
              title: getText(bookModel),
              textStyle: Styles.font16Medium.copyWith(
                  fontWeight: FontWeightHelper.semiBold, color: Colors.white),
              backGroundColor: myOrange,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          )
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return "Not Available";
    } else {
      return "Free Preview";
    }
  }
}
