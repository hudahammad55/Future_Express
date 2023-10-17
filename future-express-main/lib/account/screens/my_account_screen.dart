import 'package:flutter/material.dart';
import 'package:future_express/account/profile/screens/my_profile_screen.dart';
import 'package:future_express/account/screens/notifications_screen.dart';
import 'package:future_express/shared/utils/my_utils.dart';
import 'package:future_express/shared/widgets/express_app_bar.dart';

import '../widgets/account_list_tile.dart';

class MyAccountScreen extends StatefulWidget {
  final Function back;
  const MyAccountScreen({Key? key, required this.back}) : super(key: key);

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  String ac_pr = 'a';

  @override
  Widget build(BuildContext context) {
    return ac_pr == 'p'
        ? MyProfileScreen(
            back: () {
              setState(() {
                ac_pr = "a";
              });
            },
          )
        : WillPopScope(
            onWillPop: () async {
              widget.back();
              return false;
            },
            child: Scaffold(
              appBar: ExpressAppBar(myTitle: 'حسابى', onTap: () {}),
              body: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ListView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  children: [
                    AccountListTile(
                      title: 'ملفى',
                      icon: 'assets/icons/profile.svg',
                      onPressed: () {
                        setState(() {
                          ac_pr = 'p';
                        });
                      },
                    ),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
                    ),
                    AccountListTile(
                      title: 'رصيدى',
                      icon: 'assets/icons/wallet.svg',
                      onPressed: () {},
                    ),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
                    ),
                    AccountListTile(
                      title: 'التقييم',
                      icon: 'assets/icons/star.svg',
                      onPressed: () {},
                    ),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
                    ),
                    AccountListTile(
                      title: 'تنبيهات',
                      icon: 'assets/icons/notification.svg',
                      onPressed: () {
                        pushPage(context, NotificationScreen());
                      },
                    ),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
                    ),
                    AccountListTile(
                      title: 'تسجيل الخروج',
                      icon: 'assets/icons/exit.svg',
                      onPressed: () {},
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
}
