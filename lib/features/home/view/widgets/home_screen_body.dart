import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/features/home/view/widgets/books_list_view.dart';
import 'package:bookly_app/features/home/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          BooksListView(),
          SizedBox(
            height: 16,
          ),
          Text(
            'BestSeller',
            style: Styles.titleSemiBold,
          ),
        ],
      ),
    );
  }
}
