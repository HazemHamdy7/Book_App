import 'package:go_router/go_router.dart';

import '../../Features/Spilash/presention/views/spilash_screen.dart';

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
      builder: (context, state) => const BookDetailsView(),
    ),
    GoRoute(
      path: routerSearchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
