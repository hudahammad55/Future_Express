import 'package:flutter/material.dart';
import 'package:future_express/shared/palette.dart';
import 'package:future_express/shared/widgets/express_app_bar.dart';
import 'package:future_express/shared/widgets/express_button.dart';
import 'package:future_express/shared/widgets/express_card.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ExpressAppBar(
          myTitle: 'طلب حالى', onTap: () => Navigator.pop(context)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "الصنف",
                style: TextStyle(
                    color: Palette.blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: const ExpressCard(
                  child: Text(
                    "بيج ماك وتشيكن تشستر",
                    style: TextStyle(color: Palette.greyColor, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "الكمية",
                style: TextStyle(
                    color: Palette.blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: const ExpressCard(
                  child: Text(
                    "ب2 بيج ماك و2 تشيكن تشستر",
                    style: TextStyle(color: Palette.greyColor, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "ملاحظة",
                style: TextStyle(
                    color: Palette.blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: const ExpressCard(
                  child: Text(
                    "اضافة 1 هاليبنو صوص ",
                    style: TextStyle(color: Palette.greyColor, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "عنوان التوصيل",
                    style: TextStyle(
                        color: Palette.blackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "اظهر على الخريطة",
                    style: TextStyle(
                      color: Palette.primaryColor,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: const ExpressCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "مطعم ماكدونالز",
                        style:
                            TextStyle(color: Palette.greyColor, fontSize: 18),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "المنزل",
                        style:
                            TextStyle(color: Palette.greyColor, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "الحالة",
                style: TextStyle(
                    color: Palette.blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () => {_showBottomModal()},
                child: Container(
                  width: double.infinity,
                  child: const ExpressCard(
                    child: Text(
                      "تم الشراء",
                      style: TextStyle(color: Palette.greyColor, fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ]),
      ),
    );
  }

  _showBottomModal() {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.30,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(25.0),
                    topRight: const Radius.circular(25.0),
                  )),
              child:  Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "العميل : ",
                              style: TextStyle(
                                  color: Palette.blackColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              "ابوفهد عبدالعزيز",
                              style: TextStyle(
                                  color: Palette.greyColor, fontSize: 18),
                            )
                          ],
                        ),
                        Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: InkWell(onTap: ()=> {},
                                child: Image.asset('assets/images/call.png' )),
                            ),
                            
                            InkWell(onTap: ()=>{},
                              child: Image.asset('assets/images/social.png' )),
                          ],
                        )
                      ],
                    ),
                    // SizedBox(
                    //   height: 12,
                    // ),
                    Row(
                      children: [
                        Text(
                          "الحالة : ",
                          style: TextStyle(
                              color: Palette.blackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          "تم الشراء",
                          style:
                              TextStyle(color: Palette.greyColor, fontSize: 18),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text(
                          "الاجمالى : ",
                          style: TextStyle(
                              color: Palette.blackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          "15 ريال سعودى",
                          style:
                              TextStyle(color: Palette.greyColor, fontSize: 18),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ExpressButton(child: Text("تغيير حالة الطلب" , style: TextStyle(fontSize: 16),),)
                  ],
                ),
              ),
            ),
          );
        });
  }
}
