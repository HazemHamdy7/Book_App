import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/data/repos/home_repo.dart';
import 'package:book_app/Features/home/data/repos/home_repo_implt.dart';
import 'package:book_app/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Spilash/presention/views/spilash_screen.dart';

import '../../Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import '../../Features/home/presentation/views/book_details_view.dart';
import '../../Features/home/presentation/views/home_view.dart';
import '../../Features/search/views/search_view.dart';

abstract class AppRouter {
  static const routerHomeView = '/homeView';
  static const routerBookDetailsView = '/bookDetailsView';
  static const routerSearchView = '/routerSearchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SpilashScereen(),
    ),
    GoRoute(
      path: routerHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: routerBookDetailsView,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
        child: BookDetailsView(
          bookModel: state.extra as BookModel,
        ),
      ),
    ),
    GoRoute(
      path: routerSearchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
