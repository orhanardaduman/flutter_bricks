import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'helpers/dependency_injection/bloc_injection.dart';
import 'helpers/singleton/base_singelton.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: BlocInjection().getBlocs(),
      child: const ValoGuideApp(),
    ),
  );
}

class ValoGuideApp extends StatefulWidget {
  const ValoGuideApp({Key? key}) : super(key: key);

  @override
  State<ValoGuideApp> createState() => ValoGuideAppState();
}

class ValoGuideAppState extends State<ValoGuideApp> with BaseSingleton {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routes.routes,
      title: constants.appName,
    );
  }
}
