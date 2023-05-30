
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/{{filename.snakeCase()}}_bloc.dart';
import '../bloc/{{filename.snakeCase()}}_events.dart';
import '../bloc/{{filename.snakeCase()}}_states.dart';
import '../../../../../helpers/singleton/base_singelton.dart';

class {{filename.pascalCase()}}Page extends StatefulWidget {
  const {{filename.pascalCase()}}Page({Key? key}) : super(key: key);

  @override
  State<{{filename.pascalCase()}}Page> createState() => _{{filename.pascalCase()}}PageState();
}

class _{{filename.pascalCase()}}PageState extends State<{{filename.pascalCase()}}Page> with BaseSingleton {
  late {{filename.pascalCase()}}Bloc bloc;
  @override
  void initState() {
    super.initState();
    bloc = context.read<{{filename.pascalCase()}}Bloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: ESportsAppBar().customAppBar(context, ""),
      body: BlocBuilder(
        bloc: bloc,
        builder: (context, state) {
          if (state is {{filename.pascalCase()}}Loaded) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
           
            );
          } else if (state is {{filename.pascalCase()}}Failed) {
            return Column(
              children: [
                const Spacer(),
                
                const Spacer(),
              ],
            );
          } else {
            return Column(
              children: [
                const Spacer(),
                functions.platformIndicator(),
                const Spacer(),
              ],
            );
          }
        },
      ),
    );
  }
}
