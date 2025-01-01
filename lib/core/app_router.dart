import 'package:go_router/go_router.dart';
import 'package:muslim/views/main_screen.dart';
import 'package:muslim/views/splash_view.dart';

abstract class AppRouter {
  static final MainPage = "/main_screen";
  static final Surah = "/surah_page";
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => SplachView(),
    ),
    GoRoute(
      path: "/main_screen",
      builder: (context, state) => MainScreen(),
    ),
    // GoRoute(
    //   path: "/surah_page",
    //   builder: (context, state) => SurahPage(),
    // ),
  ]);
}
