import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class {{filename.pascalCase()}}CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;
  final double? minFontSize, maxFontSize;
  final TextAlign? align;
  const {{filename.pascalCase()}}CustomText({
    Key? key,
    required this.text,
    this.style,
    this.maxLines,
    this.maxFontSize,
    this.minFontSize,
    this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      minFontSize: minFontSize ?? 1,
      maxLines: maxLines ?? 1,
      maxFontSize: maxFontSize ?? 56,
      textAlign: align,
      style: style != null
          ? style?.copyWith()
          : const TextStyle(
              color: Colors.white,
            ),
    );
  }
}
