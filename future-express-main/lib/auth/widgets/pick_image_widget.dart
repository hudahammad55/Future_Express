import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_express/shared/palette.dart';


class PickImageWidget extends StatefulWidget {
  final String title;
  final Function onPressed;
  final String? image;
  const PickImageWidget({super.key, required this.title, required this.onPressed, this.image});

  @override
  State<PickImageWidget> createState() => _PickImageWidgetState();
}

class _PickImageWidgetState extends State<PickImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Palette.greyColor.shade200,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Palette.greyColor.shade500,
              )
            ),
            child: widget.image == null ?Center(
              child: SvgPicture.asset('assets/icons/pick_image.svg',
              height: 40,
                width: 40,
              ),
            ) : Container(),
          ),
          SizedBox(height: 10,),
          Text(widget.title,style: TextStyle(
            color: Palette.greyColor,
          ),),
        ],
      ),
    );
  }
}
