import 'package:bookly_app/core/di/dependency_injection.dart';
import 'package:bookly_app/core/routes/app_router.dart';
import 'package:bookly_app/core/theming/colors.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/logic/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/logic/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, _) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => FeaturedBooksCubit(
                  getIt.get<HomeRepoImpl>(),
                )..fetchFeaturedBooks(), // I call this method after retuning cubit(the return is FeaturedBooksCubit not fetchFeaturedBooks)
              ),
              BlocProvider(
                create: (context) => NewestBooksCubit(
                  getIt.get<HomeRepoImpl>(),
                )..fetchNewestBooks(),
              ),
            ],
            child: MaterialApp.router(
              routerConfig: AppRouter.router,
              debugShowCheckedModeBanner: false,
              theme: ThemeData.dark().copyWith(
                scaffoldBackgroundColor: primaryColor,
                textTheme:
                    GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
              ),
              // home: const SplashScreen(),
            ),
          );
        });
  }
}
