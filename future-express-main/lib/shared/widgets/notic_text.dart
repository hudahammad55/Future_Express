import 'package:flutter/material.dart';
import 'package:future_express/shared/palette.dart';

class NoticText extends StatelessWidget {
  final String text;
  const NoticText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: const TextStyle(
        fontSize: 12,
        color: Palette.dangerColor,
      ),
    );
  }
}
