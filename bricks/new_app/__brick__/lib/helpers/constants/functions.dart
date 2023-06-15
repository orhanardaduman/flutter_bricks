import 'dart:core';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../singleton/base_singelton.dart';

class BaseFunctions with BaseSingleton {
  static BaseFunctions? _instance;
  static BaseFunctions get instance {
    _instance ??= BaseFunctions._init();
    return _instance!;
  }

  final ValueNotifier<Locale?> _locale = ValueNotifier<Locale?>(null);

  BaseFunctions._init();
  ValueNotifier<Locale?> getNotifer() {
    return _locale;
  }

  Widget platformIndicator() {
    return Center(
      child: Platform.isIOS
          ? const CupertinoActivityIndicator(
              color: Colors.white,
            )
          : const CircularProgressIndicator(
              color: Colors.white,
            ),
    );
  }

  animatedRouting({
    required GoRouterState state,
    required Widget route,
  }) =>
      CustomTransitionPage<void>(
        key: state.pageKey,
        child: route,
        transitionsBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation, Widget child) =>
            SlideTransition(
          position: animation.drive(
            Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.easeInOut)),
          ),
          child: child,
        ),
      );

  animatedRoutingFade({
    required GoRouterState state,
    required Widget route,
  }) =>
      CustomTransitionPage<void>(
        key: state.pageKey,
        child: route,
        transitionsBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation, Widget child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      );
}
