import 'package:flutter/material.dart';
import 'package:future_express/shared/palette.dart';

class HeaderText extends StatelessWidget {
  final String text;
  const HeaderText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 24,
        color: Palette.blackColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
