import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:future_express/home/widgets/home_screen_button.dart';
import 'package:future_express/shared/widgets/express_app_bar.dart';
import 'package:future_express/wallet/screens/my_wallet_screen.dart';

import '../../shared/utils/my_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ExpressAppBar(
        myTitle: 'الرئيسية',
        onTap: () {
          SystemNavigator.pop();
        },
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: size.height * 0.13,
              child: HomeScreenButton(
                title: 'PICKUP',
                subTitle: 'عرض التفاصيل',
                style: HomeButtonStyle.secondary,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: size.height * 0.13,
              child: const HomeScreenButton(
                title: 'طلبات اليوم',
                subTitle: 'عرض التفاصيل',
                style: HomeButtonStyle.primary,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: size.height * 0.13,
              child: const HomeScreenButton(
                title: 'مجموع الطلبات',
                subTitle: 'عرض التفاصيل',
                style: HomeButtonStyle.primary,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: size.height * 0.13,
              child:  HomeScreenButton(
                title: 'المحفظة',
                subTitle: 'عرض التفاصيل',
                style: HomeButtonStyle.primary,
                onPressed: (){
                  pushPage(context,MyWalletScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
