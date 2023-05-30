import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../drawer/{{filename.snakeCase()}}_drawer.dart';
import '../widgets/{{filename.snakeCase()}}_backgroud.dart';
import '../widgets/{{filename.snakeCase()}}_custom_text.dart';

class {{filename.pascalCase()}}Scaffold extends StatefulWidget {
  final Widget child;
  final GoRouterState? navigatorState;
  const {{filename.pascalCase()}}Scaffold({
    Key? key,
    required this.child,
    required this.navigatorState,
  }) : super(key: key);

  @override
  State<{{filename.pascalCase()}}Scaffold> createState() => {{filename.pascalCase()}}ScaffoldState();
}

class {{filename.pascalCase()}}ScaffoldState extends State<{{filename.pascalCase()}}Scaffold> {
  final List<String> locationsFor{{filename.pascalCase()}} = [
   
  ];

  int _getSelectedTabIndex() {
    final GoRouter route = GoRouter.of(context);
    final String location = route.location;
    final selected =
        locationsFor{{filename.pascalCase()}}.indexWhere((element) => location.endsWith(element));

    return selected >= 0 ? selected : 0;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Stack(
        children: [
          const {{filename.pascalCase()}}Background(),
          Scaffold(
            backgroundColor: Colors.transparent,
            drawer: const {{filename.pascalCase()}}Drawer(),
            /*
            bottomNavigationBar: SalomonBottomBar(
              currentIndex: _getSelectedTabIndex(),
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.black,
              onTap: (i) {
                context.go(locationsFor{{filename.pascalCase()}}[i]);
              },
              items: [
                SalomonBottomBarItem(
                  icon: Icon(
                    Icons.home,
                    color: _getSelectedTabIndex() == 0
                        ? Colors.white
                        : Colors.black,
                  ),
                  title: const {{filename.pascalCase()}}CustomText(text: ""),
                ),
              
              ],
            ),
            */
            body: widget.child,
          ),
        ],
      ),
    );
  }
}
