import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:future_express/shared/palette.dart';

class NavigationBarItem extends StatefulWidget {
  final String icon;
  final String name;
  final EdgeInsets? padding;
  final bool active;
  final void Function() onPressed;

  const NavigationBarItem({
    super.key,
    this.active = false,
    this.padding,
    required this.icon,
    required this.name,
    required this.onPressed,
  });

  @override
  State<NavigationBarItem> createState() => _NavigationBarItemState();
}

class _NavigationBarItemState extends State<NavigationBarItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: widget.padding ??
            const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        decoration: BoxDecoration(
          border: widget.active
              ? const Border(
                  top: BorderSide(
                    color: Palette.primaryColor,
                    width: 3.0,
                  ),
                )
              : null,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              widget.icon,
              width: 30,
              height: 30,
              colorFilter: ColorFilter.mode(
                  widget.active ? Palette.primaryColor : Palette.greyColor,
                  BlendMode.srcIn),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              widget.name,
              style: TextStyle(
                color: widget.active ? Palette.primaryColor : Palette.greyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
