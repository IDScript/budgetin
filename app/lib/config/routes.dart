import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/home_page.dart';
import '../ui/main_page.dart';

/// The route configuration.
class MyRouter {
  final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const MainPage();
        },
      ),
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) {
          return MyHomePage();
        },
      ),
    ],
  );
}
