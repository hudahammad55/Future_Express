import 'package:flutter/material.dart';
import 'package:future_express/account/widgets/notification_widget.dart';
import 'package:future_express/shared/widgets/express_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ExpressAppBar(
        myTitle: 'التنبيهات',
        onTap: (){
          Navigator.pop(context);
        },
      ),
      body: ListView.builder(itemBuilder: (index,ctx)=> NotificationWidget(),itemCount: 5),
    );
  }
}
