import 'package:flutter/material.dart';
import 'package:future_express/shared/palette.dart';
import 'package:future_express/shared/widgets/express_app_bar.dart';
import 'package:future_express/shared/widgets/express_card.dart';

class OrdersScreen extends StatefulWidget {
  final Function back;

  const OrdersScreen({Key? key, required this.back}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ExpressAppBar(myTitle: 'الرئيسية', onTap: () => widget.back()),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/icon.png'),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ابو فهد عبدالعزيز",
                                    style: TextStyle(
                                        color: Palette.blackColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "1097 Daju Ridge",
                                    style: TextStyle(
                                        color: Palette.greyColor, fontSize: 16),
                                  ),
                                  Text(
                                    "1283 Cunema Extension",
                                    style: TextStyle(
                                        color: Palette.greyColor, fontSize: 16),
                                  ),
                                  Text(
                                    "مطعم البيك",
                                    style: TextStyle(
                                        color: Palette.greyColor, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "15 ر.س",
                          style: TextStyle(
                              color: Palette.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/date.png" ),
                        const Padding(
                          padding:  EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
                          child: Text(
                            "16 oct 2023",
                            style:
                                TextStyle(color: Palette.greyColor, fontSize: 18),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/icon.png'),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ابو فهد عبدالعزيز",
                                    style: TextStyle(
                                        color: Palette.blackColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "1097 Daju Ridge",
                                    style: TextStyle(
                                        color: Palette.greyColor, fontSize: 16),
                                  ),
                                  Text(
                                    "1283 Cunema Extension",
                                    style: TextStyle(
                                        color: Palette.greyColor, fontSize: 16),
                                  ),
                                  Text(
                                    "مطعم البيك",
                                    style: TextStyle(
                                        color: Palette.greyColor, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "15 ر.س",
                          style: TextStyle(
                              color: Palette.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/date.png" ),
                        const Padding(
                          padding:  EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
                          child: Text(
                            "16 oct 2023",
                            style:
                                TextStyle(color: Palette.greyColor, fontSize: 18),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
             
            ],
          ),
        ));
  }
}
