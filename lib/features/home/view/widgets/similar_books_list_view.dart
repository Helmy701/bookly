import 'package:bookly_app/core/routes/routes.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/logic/similar_books_cubit.dart';
import 'package:bookly_app/features/home/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksFailureState) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else if (state is SimilarBooksSuccessState) {
          return SizedBox(
            height: 112.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: SizedBox(
                    width: 70.h,
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
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
