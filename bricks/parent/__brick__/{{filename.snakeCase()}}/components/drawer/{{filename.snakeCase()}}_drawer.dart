import '../widgets/{{filename.snakeCase()}}_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class {{filename.pascalCase()}}Drawer extends StatelessWidget {
  const {{filename.pascalCase()}}Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
           // color: colors.{{filename.pascalCase()}}BackGround,
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10))),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .005,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .02,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).pop();
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context, rootNavigator: true).pop();
                 // context.go(GGIRouteEnums.home.getRouteName());
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    {{filename.pascalCase()}}CustomText(
                      text: "Oyun Bilgileri",
                    ),
                  ],
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
