import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_express/shared/widgets/body_text1.dart';
import 'package:future_express/shared/widgets/header_text.dart';

class ChooseLanguageBottomSheet extends StatefulWidget {
  const ChooseLanguageBottomSheet({Key? key}) : super(key: key);

  @override
  State<ChooseLanguageBottomSheet> createState() =>
      _ChooseLanguageBottomSheetState();
}

class _ChooseLanguageBottomSheetState extends State<ChooseLanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          HeaderText(text: 'اختر لغة'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _languageWidget('assets/icons/sar_flag.svg', 'العربية'),
              SizedBox(
                width: 50,
              ),
              _languageWidget('assets/icons/english.png', 'English'),
            ],
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  Widget _languageWidget(String icon, String title) {
    return Container(
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            width: 80,
            height: 80,
          ),
          SizedBox(
            height: 10,
          ),
          BodyText1(text: title),
        ],
      ),
    );
  }
}
