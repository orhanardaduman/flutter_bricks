import 'package:flutter/material.dart';

import '../widgets/{{filename.snakeCase()}}_custom_text.dart';

class {{filename.pascalCase()}}AppBar  {
  AppBar customAppBar(BuildContext context, String name) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: const Icon(
          Icons.menu,
        ),
      ),
      title: {{filename.pascalCase()}}CustomText(text: name),
    );
  }
}
