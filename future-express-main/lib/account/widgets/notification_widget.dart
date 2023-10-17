import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_express/shared/palette.dart';
import 'package:future_express/shared/widgets/express_card.dart';


class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
      child: ExpressCard(
        padding: EdgeInsets.only(
          top: 18,
          right: 12,
          bottom: 8,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
Row(
  children: [
    SvgPicture.asset('assets/icons/notification2.svg',width: 40,height: 40,),
    SizedBox(width: 10,),
    Text('من فضلك قم بدفع 200 ريال'),

  ],
),
SizedBox(
  height: 40,
  width: 3,
  child: Container(decoration:BoxDecoration(
    color: Palette.primaryColor,
    borderRadius: BorderRadius.circular(10),
  ) ,),
) ,
              ],
            ),
            SizedBox(height: 10,),
            Divider(endIndent: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/calender.svg',width: 30,height: 30,),
                      SizedBox(width: 3,),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text('04 Jul 2022',style: TextStyle(
                          color: Palette.greyColor,
                          fontSize: 16
                        ),),
                      ),
                    ],
                  ),
                  SizedBox(width: 40,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/hour.svg',width: 30,height: 30,),
                      SizedBox(width: 3,),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text('09:16AM - 09:16AM',style: TextStyle(
                            color: Palette.greyColor,
                            fontSize: 16
                        ),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
