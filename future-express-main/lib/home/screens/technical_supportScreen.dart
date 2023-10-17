import 'package:flutter/material.dart';
import 'package:future_express/shared/palette.dart';
import 'package:future_express/shared/widgets/express_app_bar.dart';
import 'package:future_express/shared/widgets/express_button.dart';
import 'package:future_express/shared/widgets/express_card.dart';

class TechnicalSupport extends StatefulWidget {
  final Function back;

  const TechnicalSupport({Key? key, required this.back}) : super(key: key);

  @override
  State<TechnicalSupport> createState() => _TechnicalSupportState();
}

class _TechnicalSupportState extends State<TechnicalSupport> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ExpressAppBar(myTitle: 'الدعم الفنى', onTap: () => widget.back()),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'هل تواجه مشكلة؟',
              textAlign: TextAlign.center,
              style: TextStyle(color: Palette.primaryLightColor, fontSize: 23),
            ),
            const SizedBox(
              height: 30,
            ),
            ExpressButton(
              onPressed: () => {},
              child: Text('ارسل رسالة'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'يمكنك التواصل عن طريق',
              textAlign: TextAlign.center,
              style: TextStyle(color: Palette.primaryLightColor, fontSize: 23),
            ),
             const SizedBox(
              height: 30,
            ),
            ExpressCard(
              padding: EdgeInsets.all(25.0) ,
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("الموقع الالكترونى" , style: TextStyle(fontSize: 18,color: Palette.blackColor,),),
                      Text("www.futureexpress.com" , style: TextStyle(fontSize: 18,color: Palette.blackColor,))],
                  ),
                  Image.asset(
                    'assets/images/Button.png',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'او عن طريق',
              textAlign: TextAlign.center,
              style: TextStyle(color: Palette.primaryLightColor, fontSize: 23),
            ),
             const SizedBox(
              height: 20,
            ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/whatsapp.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/instagram.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/twitter.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/snapchat.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/facebook.png',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
