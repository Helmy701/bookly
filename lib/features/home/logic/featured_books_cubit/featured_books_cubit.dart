// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(
    this.homeRepo,
  ) : super(FeaturedBooksInitialState());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    var result = await homeRepo.fetchFeaturesBooks();
    result.fold((l) => emit(FeaturedBooksFailureState(l.errorMessage)),
        (r) => emit(FeaturedBooksSuccessState(r)));
  }
}
