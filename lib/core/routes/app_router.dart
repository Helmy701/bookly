import 'package:bookly_app/core/routes/routes.dart';
import 'package:bookly_app/features/home/view/book_details_screen.dart';
import 'package:bookly_app/features/home/view/home_screen.dart';
import 'package:bookly_app/features/splash/view/splash_screen.dart';
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
        builder: (context, state) => const BookDetailsScreen(),
      )
    ],
  );
}
