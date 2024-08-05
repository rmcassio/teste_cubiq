import 'package:go_router/go_router.dart';
import 'package:teste_cubiq/presenter/pages/home_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
