import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'helpers/dependency_injection/bloc_injection.dart';
import 'helpers/singleton/base_singelton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(
    MultiBlocProvider(
      providers: BlocInjection().getBlocs(),
      child: const {{filename.pascalCase()}}App(),
    ),
  );
}

class {{filename.pascalCase()}}App extends StatefulWidget {
  const {{filename.pascalCase()}}App({Key? key}) : super(key: key);

  @override
  State<{{filename.pascalCase()}}App> createState() => {{filename.pascalCase()}}AppState();
}

class {{filename.pascalCase()}}AppState extends State<{{filename.pascalCase()}}App> with BaseSingleton {
  @override
  Widget build(BuildContext context) {
      return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: false,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        routerConfig: routes.routes,
        title: constants.appName,
      ),
    );
  }
}
