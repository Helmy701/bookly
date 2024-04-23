// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(
    this.homeRepo,
  ) : super(SimilarBooksInitialState());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String categroy}) async {
    emit(SimilarBooksLoadingState());
    var result = await homeRepo.fetchSimilarBooks(category: categroy);
    result.fold((l) => emit(SimilarBooksFailureState(l.errorMessage)),
        (r) => emit(SimilarBooksSuccessState(r)));
  }
}
