import 'package:go_router/go_router.dart';
import 'package:meditrack/Features/Home/presentation/Views/home_view.dart';
import 'package:meditrack/Features/Splash/presentation/Views/splash_view.dart';

abstract class AppRouters {
  static GoRouter router = GoRouter(
    routes: [
        GoRoute(path: "/",builder: (context, state) => const SplashView(),),
        GoRoute(path: "/home",builder: (context, state) => const HomeView()),
        
    ]);
}
