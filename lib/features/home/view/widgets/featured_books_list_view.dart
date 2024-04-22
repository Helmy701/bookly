import 'package:bookly_app/core/routes/routes.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/logic/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccessState) {
          return SizedBox(
            height: 224.h,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: ((context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 15.w),
                  child: SizedBox(
                    width: 150.w,
                    child: GestureDetector(
                      onTap: () => GoRouter.of(context).push(
                        Routes.bookDetailsScreen,
                        extra: state.books[index],
                      ),
                      child: CustomBookImage(
                        imageUrl:
                            state.books[index].volumeInfo.imageLinks!.thumbnail,
                      ),
                    ),
                  ),
                );
              }),
            ),
          );
        } else if (state is FeaturedBooksFailureState) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
