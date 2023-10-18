import 'package:flutter/material.dart';
import 'package:future_express/shared/palette.dart';
import 'package:future_express/shared/widgets/express_app_bar.dart';
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
              Container(
                width: double.infinity,
                child: const ExpressCard(
                  child: Text(
                    "تم الشراء",
                    style: TextStyle(color: Palette.greyColor, fontSize: 18),
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
}
