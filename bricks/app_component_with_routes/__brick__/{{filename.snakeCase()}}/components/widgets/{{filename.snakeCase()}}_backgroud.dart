import 'package:flutter/material.dart';

class {{filename.pascalCase()}}Background extends StatelessWidget {
  const {{filename.pascalCase()}}Background ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          colors: [
           
          ],
        ),
      ),
    );
  }
}
