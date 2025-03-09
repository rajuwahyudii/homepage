import 'package:go_router/go_router.dart';
import 'package:homepage/features/home/view/home_view.dart';
import 'package:homepage/router/strings.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const HomePage(),
    ),
    GoRoute(
      path: '/home',
      name: RouteString.home,
      builder: (_, __) => const HomePage(),
    )
  ],
);