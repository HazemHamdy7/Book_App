import 'package:go_router/go_router.dart';

import '../../Features/Spilash/presention/views/spilash_screen.dart';
import '../../Features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const RouterHomeView = '/homeView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SpilashScereen(),
    ),
      GoRoute(
      path: RouterHomeView,
      builder: (context, state) => const HomeView(),
    ),
  ]);
}
