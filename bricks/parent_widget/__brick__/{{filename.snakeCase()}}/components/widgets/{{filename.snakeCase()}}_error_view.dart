import 'package:flutter/material.dart';
import '{{filename.snakeCase()}}_custom_text.dart';

class {{filename.pascalCase()}}ErrorView extends StatefulWidget {
  final String text;
  final VoidCallback onReTry;
  const {{filename.pascalCase()}}ErrorView({Key? key, required this.text, required this.onReTry})
      : super(key: key);

  @override
  State<{{filename.pascalCase()}}ErrorView> createState() => {{filename.pascalCase()}}ErrorViewState();
}

class {{filename.pascalCase()}}ErrorViewState extends State<{{filename.pascalCase()}}ErrorView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const Spacer(),
          Text(widget.text),
          InkWell(
            onTap: widget.onReTry,
            child: const {{filename.pascalCase()}}CustomText(text: "Tekrar dene"),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
