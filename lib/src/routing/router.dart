import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http_requests/src/features/employees/presentation/employee_detail/employee_detail.dart';
import 'package:http_requests/src/features/employees/presentation/employees_list/employees_list.dart';

enum PAGES {
  home,
  detail,
}

extension AppRoutesExtension on PAGES {
  String get path {
    switch (this) {
      case PAGES.home:
        return '/';
      case PAGES.detail:
        return '/detail';
    }
  }

  String get name {
    switch (this) {
      case PAGES.home:
        return 'home';
      case PAGES.detail:
        return 'detail';
    }
  }

  Widget Function(BuildContext context, GoRouterState routerState) get builder {
    switch (this) {
      case PAGES.home:
        return (context, routerState) => const EmployeesListScreen();
      case PAGES.detail:
        return (context, routerState) {
          final id = routerState.uri.queryParameters['id'];

          final numberId = id == null ? -1 : int.parse(id);

          return EmployeeDetailScreen(
            id: numberId,
          );
        };
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
