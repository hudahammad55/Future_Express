import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/palette.dart';

class WalletCardItem extends StatelessWidget {
  final void Function() onPressed;
  final String icon;
  final String title;
  const WalletCardItem({super.key,required this.onPressed,required this.icon,required this.title,});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
             icon,
              width: 20,
              height: 20,
              colorFilter: ColorFilter.mode(
                   Palette.whiteColor,
                  BlendMode.srcIn),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(
                color: Palette.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
