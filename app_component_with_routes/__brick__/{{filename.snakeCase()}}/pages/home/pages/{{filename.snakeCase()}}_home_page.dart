import 'package:flutter/material.dart';

import '../../../components/appbar/{{filename.snakeCase()}}_app_bar.dart';

class {{filename.pascalCase()}}HomePage extends StatefulWidget {
  const {{filename.pascalCase()}}HomePage({Key? key}) : super(key: key);

  @override
  State<{{filename.pascalCase()}}HomePage> createState() => _{{filename.pascalCase()}}HomePageState();
}

class _{{filename.pascalCase()}}HomePageState extends State<{{filename.pascalCase()}}HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: {{filename.pascalCase()}}AppBar().customAppBar(context, "E-Spor"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            
          ],
        ),
      ),
    );
  }
}
