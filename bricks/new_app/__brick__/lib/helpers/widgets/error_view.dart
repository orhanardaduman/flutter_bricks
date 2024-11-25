import 'package:bbmlbuildapp/helpers/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ErrorView extends StatefulWidget {
  final String text;
  final VoidCallback onReTry;
  const ErrorView({Key? key, required this.text, required this.onReTry})
      : super(key: key);

  @override
  State<ErrorView> createState() => ErrorViewState();
}

class ErrorViewState extends State<ErrorView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(text: widget.text),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: widget.onReTry,
            child: CustomText(
              text: "Tekrar Dene",
            ),
          ),
        ],
      ),
    );
  }
}
