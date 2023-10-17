import 'package:flutter/material.dart';
import 'package:future_express/shared/palette.dart';

class TextFieldHeader extends StatelessWidget {
  final String text;
  const TextFieldHeader({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: const TextStyle(
        fontSize: 14,
        color: Palette.blackColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
