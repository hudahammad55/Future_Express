import 'package:flutter/material.dart';
import 'package:future_express/account/screens/my_account_screen.dart';
import 'package:future_express/home/screens/home_screen.dart';
import 'package:future_express/home/screens/technical_supportScreen.dart';
import 'package:future_express/orders/screens/currentOrders_screen.dart';
import 'package:future_express/orders/screens/orders_screen.dart';
import 'package:future_express/shared/palette.dart';

import '../widgets/navigation_bar_item.dart';

class ExpressLayoutScreen extends StatefulWidget {
  const ExpressLayoutScreen({Key? key}) : super(key: key);

  @override
  State<ExpressLayoutScreen> createState() => _ExpressLayoutScreenState();
}

enum ExpressTabBarItem {
  home,
  orders,
  tasks,
  support,
  profile,
}

class _ExpressLayoutScreenState extends State<ExpressLayoutScreen> {
  var _activeTab = ExpressTabBarItem.home;

  get _activeScreen {
    switch (_activeTab) {
      case ExpressTabBarItem.home:
        return const HomeScreen();
      case ExpressTabBarItem.orders:
        return OrdersScreen(
          back: () => _changeTab(ExpressTabBarItem.orders),
        ) ;
      case ExpressTabBarItem.tasks:
        return CurrentOrdersScreen(
          back: () => _changeTab(ExpressTabBarItem.tasks)
        ) ;
      case ExpressTabBarItem.support:
        return TechnicalSupport(
          back: () => _changeTab(ExpressTabBarItem.support),
        );
      case ExpressTabBarItem.profile:
        return MyAccountScreen(
          back: () => _changeTab(ExpressTabBarItem.home),
        );
    }
  }

  void _changeTab(ExpressTabBarItem tab) {
    setState(() {
      _activeTab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _activeScreen,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _changeTab(ExpressTabBarItem.home);
        },
        backgroundColor: Palette.whiteColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/icons/logo.jpeg',
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavigationBarItem(
              onPressed: () => _changeTab(ExpressTabBarItem.orders),
              icon: 'assets/icons/orders.svg',
              name: 'الطلبات',
              active: _activeTab == ExpressTabBarItem.orders,
            ),
            NavigationBarItem(
              onPressed: () => _changeTab(ExpressTabBarItem.tasks),
              icon: 'assets/icons/tasks.svg',
              name: 'المهام',
              active: _activeTab == ExpressTabBarItem.tasks,
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            ),
            const SizedBox(
              width: 40,
            ),
            NavigationBarItem(
              onPressed: () => _changeTab(ExpressTabBarItem.support),
              icon: 'assets/icons/support.svg',
              name: 'الدعم الفنى',
              active: _activeTab == ExpressTabBarItem.support,
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
            ),
            NavigationBarItem(
              onPressed: () => _changeTab(ExpressTabBarItem.profile),
              icon: 'assets/icons/profile.svg',
              name: 'حسابى',
              active: _activeTab == ExpressTabBarItem.profile,
            ),
          ],
        ),
      ),
    );
  }
}
