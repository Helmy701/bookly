import 'package:bookly_app/core/networking/api_service.dart';
import 'package:bookly_app/core/networking/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=computer scince&Sorting=newest');

      List<BookModel> books = [];

      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExption(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturesBooks() async {
    // TODO: implement fetchFeaturesBooks
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExption(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=$category&Sorting=relevence:$category');

      List<BookModel> books = [];

      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExption(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}