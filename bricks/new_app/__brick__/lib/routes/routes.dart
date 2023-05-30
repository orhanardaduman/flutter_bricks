import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

class Routes {
  static Routes? _instance;
  static Routes get instance {
    _instance ??= Routes._init();

    return _instance!;
  }

  Routes._init();

  GoRouter routes = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: RouteEnums.home.routeName,
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        path: RouteEnums.home.routeName,
        pageBuilder: (context, state) {
          return BaseFunctions.instance.animatedRouting(
            state: state,
            route: const SizedBox(),
          );
        },
        routes: GGIRoutes.instance.routes,
      ),
    ],
  );
}
