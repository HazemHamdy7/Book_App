import 'package:book_app/Features/home/data/repos/home_repo_implt.dart';
import 'package:book_app/Features/home/presentation/manger/featured%20_books%20_cubit/featured_books_cubit.dart';
import 'package:book_app/core/utils/api_service.dart';
import 'package:book_app/core/utils/service_locator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:book_app/core/utils/color.dart';
import 'Features/home/presentation/manger/newset_book_cubit/newset_books_cubit.dart';
import 'core/utils/app_router.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
        BlocProvider(
            create: (context) => NewsetBooksCubit(
                  getIt.get<HomeRepoImpl>(),
                )),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimyColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
//https://www.googleapis.com/books/v1/volumes?q=computer science
