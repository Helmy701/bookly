import 'package:bookly_app/core/di/dependency_injection.dart';
import 'package:bookly_app/core/routes/routes.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/logic/similar_books_cubit.dart';
import 'package:bookly_app/features/home/view/book_details_screen.dart';
import 'package:bookly_app/features/home/view/home_screen.dart';
import 'package:bookly_app/features/search/view/search_screen.dart';
import 'package:bookly_app/features/splash/view/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: Routes.homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: Routes.bookDetailsScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsScreen(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: Routes.searchScreen,
        builder: (context, state) => const SearchScreen(),
      ),
    ],
  );
}
