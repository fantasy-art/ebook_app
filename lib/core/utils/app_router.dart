import 'package:ebook_app/features/home/prsenteation/views/book_datails_view.dart';
import 'package:ebook_app/features/home/prsenteation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/persentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
