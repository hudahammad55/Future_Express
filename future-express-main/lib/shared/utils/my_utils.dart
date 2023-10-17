import 'package:flutter/material.dart';

Future<T?> pushPage<T>(BuildContext context, Widget page) {
  return Navigator.of(context)
      .push<T>(MaterialPageRoute(builder: (context) => page));
}

void showMyBottomSheet(BuildContext context, Widget page) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      isScrollControlled: true,
      context: context,
      builder: (ctx) => page);
}
