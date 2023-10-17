import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_express/home/widgets/navigation_bar_item.dart';
import 'package:future_express/shared/widgets/express_app_bar.dart';
import 'package:future_express/shared/widgets/express_card.dart';
import 'package:future_express/wallet/widgets/wallet_card_item.dart';

import '../../shared/palette.dart';


class MyWalletScreen extends StatefulWidget {
  const MyWalletScreen({super.key});

  @override
  State<MyWalletScreen> createState() => _MyWalletScreenState();
}

class _MyWalletScreenState extends State<MyWalletScreen> {
  @override
  Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ExpressAppBar(
        myTitle: 'رصيدى',
        onTap: (){
          Navigator.pop(context);
        },
      ),
      body: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
              height: size.height *0.24,
              decoration: BoxDecoration(
                  boxShadow: [Palette.cardShadow],
                  borderRadius: BorderRadius.circular(10),
                  image:  DecorationImage(image: AssetImage('assets/images/wallet_card.png'),fit: BoxFit.contain,)
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 42, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('رصيد محفظتك االحالى',style: TextStyle(
                      fontSize:14,
                      color: Palette.whiteColor,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 10,),
                    RichText(text:
TextSpan(text: '7000',style:TextStyle(
  fontSize: 24,
  color: Palette.whiteColor,
  fontWeight: FontWeight.bold,
), children: [
    TextSpan(text: ' ريال سعودى',style:TextStyle(
      fontSize: 20,
      color: Palette.whiteColor,
    ),),
]),
                    ),
                 Spacer(),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     WalletCardItem(onPressed: (){}, icon: 'assets/icons/send_money.svg', title: 'تحويل أموال'),
                     SizedBox(width: 10,),
                     WalletCardItem(onPressed: (){}, icon: 'assets/icons/receive_money.svg', title: 'إيداع أموال'),
                     SizedBox(width: 10,),
                     WalletCardItem(onPressed: (){}, icon: 'assets/icons/records.svg', title: 'السجلات'),
                   ],
                 ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
scrollDirection: Axis.horizontal,
              child: DataTable(

                border: TableBorder.all(color: Palette.greyColor),
                  decoration: BoxDecoration(
                    color: Palette.whiteColor
                  ),
                  headingRowColor: MaterialStateProperty.resolveWith(
                          (states) => Palette.primaryColor,
                  ),
                  columns: [
                    DataColumn(
                      label: Text('ID',style: TextStyle(color: Palette.whiteColor),),
                    ),
                    DataColumn(
                      label: Text('Name',style: TextStyle(color: Palette.whiteColor),),
                    ),
                    DataColumn(
                      label: Text('Code',style: TextStyle(color: Palette.whiteColor),),
                    ),
                    DataColumn(
                      label: Text('Quantity',style: TextStyle(color: Palette.whiteColor),),
                    ),
                    DataColumn(
                      label: Text('Amount',style: TextStyle(color: Palette.whiteColor), ),
                    ),
                  ],
                  rows: [

                    DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('Arshik')),
                      DataCell(Text('5644645')),
                      DataCell(Text('3')),
                      DataCell(Text('265\$')),
                    ]),DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('Arshik')),
                      DataCell(Text('5644645')),
                      DataCell(Text('3')),
                      DataCell(Text('265\$')),
                    ]),DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('Arshik')),
                      DataCell(Text('5644645')),
                      DataCell(Text('3')),
                      DataCell(Text('265\$')),
                    ]),DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('Arshik')),
                      DataCell(Text('5644645')),
                      DataCell(Text('3')),
                      DataCell(Text('265\$')),
                    ]),DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('Arshik')),
                      DataCell(Text('5644645')),
                      DataCell(Text('3')),
                      DataCell(Text('265\$')),
                    ]),DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('Arshik')),
                      DataCell(Text('5644645')),
                      DataCell(Text('3')),
                      DataCell(Text('265\$')),
                    ]),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
