import 'package:flutter/material.dart';
import 'package:valorehber/helpers/singleton/base_singelton.dart';

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
