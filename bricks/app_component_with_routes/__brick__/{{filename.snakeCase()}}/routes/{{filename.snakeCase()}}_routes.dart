import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../helpers/constants/functions.dart';

import '../components/scaffold/{{filename.snakeCase()}}_scaffold.dart';
import '../pages/home/pages/{{filename.snakeCase()}}_home_page.dart';
import 'enums/{{filename.snakeCase()}}_enums.dart';

final GlobalKey<NavigatorState> mainNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'main');

class {{filename.pascalCase()}}Routes {
  static {{filename.pascalCase()}}Routes? _instance;
  static {{filename.pascalCase()}}Routes get instance {
    _instance ??= {{filename.pascalCase()}}Routes._init();
    return _instance!;
  }

  {{filename.pascalCase()}}Routes._init();
  List<RouteBase> routes = [
    ShellRoute(
      navigatorKey: mainNavigatorKey,
      pageBuilder: (context, state, child) =>
          BaseFunctions.instance.animatedRouting(
        state: state,
        route: {{filename.pascalCase()}}Scaffold(
          navigatorState: state,
          child: child,
        ),
      ),
      routes: [
        GoRoute(
          path: {{filename.pascalCase()}}RouteEnums.home.routeName,
          pageBuilder: (context, state) {
            return BaseFunctions.instance.animatedRoutingFade(
              state: state,
              route: const {{filename.pascalCase()}}HomePage(),
            );
          },
        ),

       
      ],
    ),
    
  ];
}
