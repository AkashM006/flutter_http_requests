import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http_requests/src/features/employees/presentation/employees_list/employees_list.dart';

enum PAGES {
  home,
}

extension AppRoutesExtension on PAGES {
  String get path {
    switch (this) {
      case PAGES.home:
        return '/';
    }
  }

  String get name {
    switch (this) {
      case PAGES.home:
        return 'home';
    }
  }

  Widget Function(BuildContext context, GoRouterState routerState) get builder {
    switch (this) {
      case PAGES.home:
        return (context, routerState) => const EmployeesListScreen();
    }
  }
}

final List<RouteBase> routes = PAGES.values
    .map(
      (route) => GoRoute(
        path: route.path,
        name: route.name,
        builder: route.builder,
      ),
    )
    .toList();

final navigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: navigatorKey,
  routes: routes,
);
