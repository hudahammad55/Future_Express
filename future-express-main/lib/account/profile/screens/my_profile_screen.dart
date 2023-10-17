import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:future_express/account/profile/widgets/choose_language_bottom_sheet.dart';
import 'package:future_express/shared/utils/my_utils.dart';

import '../../../shared/palette.dart';
import '../../../shared/widgets/express_app_bar.dart';
import '../../widgets/account_list_tile.dart';

class MyProfileScreen extends StatefulWidget {
  final Function back;

  const MyProfileScreen({Key? key, required this.back}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        widget.back();
        return false;
      },
      child: Scaffold(
        appBar: ExpressAppBar(myTitle: 'ملفى', onTap: () => widget.back()),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            children: [
              AccountListTile(
                title: 'تعديل الملف الشخصى',
                icon: 'assets/icons/profile.svg',
                onPressed: () {},
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
              AccountListTile(
                title: 'اللغة',
                icon: 'assets/icons/translate.svg',
                onPressed: () => _changeLanguage(),
                trailing: const SizedBox(
                  width: 80.0,
                  height: 24.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('العربية'),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Palette.greyColor,
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
              AccountListTile(
                title: 'الاشعارات',
                icon: 'assets/icons/notification.svg',
                onPressed: () {},
                trailing: CupertinoSwitch(
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _changeLanguage() {
    showMyBottomSheet(context, ChooseLanguageBottomSheet());
  }
}
