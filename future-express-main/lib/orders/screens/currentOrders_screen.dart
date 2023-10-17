import 'package:flutter/material.dart';
import 'package:future_express/shared/palette.dart';
import 'package:future_express/shared/widgets/express_app_bar.dart';
import 'package:future_express/shared/widgets/express_card.dart';

class CurrentOrdersScreen extends StatefulWidget {
  final Function back;

  const CurrentOrdersScreen({Key? key, required this.back}) : super(key: key);

  @override
  State<CurrentOrdersScreen> createState() => _CurrentOrdersScreenState();
}

class _CurrentOrdersScreenState extends State<CurrentOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ExpressAppBar(
            myTitle: 'الطلبات الحالية', onTap: () => widget.back()),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: double.infinity,
                    color: Colors.red,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    color: Colors.green,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ExpressCard(
                padding: const EdgeInsets.only(
                  top: 18,
                  right: 12,
                  left: 12,
                  bottom: 8,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/pickup.png'),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "shop",
                                style: TextStyle(
                                    color: Palette.blackColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  // Image.asset('assets/images/add.png'),
                                  const Text(
                                    "شارع رقم 2",
                                    style: TextStyle(
                                        color: Palette.greyColor, fontSize: 16),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  // Image.asset('assets/images/add.png'),
                                  const Text(
                                    "عدد القطع: 1",
                                    style: TextStyle(
                                        color: Palette.greyColor, fontSize: 16),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  // Image.asset('assets/images/client.png'),
                                  const Text(
                                    "اسم السائق: أحمد محسن",
                                    style: TextStyle(
                                        color: Palette.greyColor, fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/date.png"),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
                          child: Text(
                            "16 oct 2023",
                            style: TextStyle(
                                color: Palette.greyColor, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
