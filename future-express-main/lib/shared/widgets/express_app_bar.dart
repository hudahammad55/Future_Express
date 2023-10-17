import 'package:flutter/material.dart';

import '../palette.dart';

class ExpressAppBar extends AppBar {
  final String myTitle;
  final Function onTap;

  ExpressAppBar({super.key, required this.myTitle, required this.onTap})
      : super(
          title: Text(
            myTitle,
            style: const TextStyle(color: Palette.blackColor , ),
          ),
          elevation: 1,
          centerTitle: true,
          leading: GestureDetector(
              onTap: () => onTap(),
              child: const Icon(Icons.arrow_back_ios_rounded)),
          iconTheme: const IconThemeData(
            color: Palette.greyColor,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
        );
}
