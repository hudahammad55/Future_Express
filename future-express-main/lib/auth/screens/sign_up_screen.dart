import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_express/auth/widgets/pick_image_widget.dart';
import 'package:future_express/shared/widgets/express_button.dart';
import 'package:future_express/shared/widgets/express_text_field.dart';
import 'package:future_express/shared/widgets/header_text.dart';
import 'package:future_express/shared/widgets/notic_text.dart';
import 'package:future_express/shared/widgets/text_field_header.dart';

import '../widgets/sar_flag_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool personal = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return personal
        ? Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
              height: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 45,
                      ),
                      HeaderText(text: 'تسجيل جديد'),
                      SizedBox(
                        height: 25,
                      ),
                      TextFieldHeader(text: 'معلومات شخصية'),
                      SizedBox(
                        height: 10,
                      ),
                      ExpressTextField(
                          hint: 'الاسم',
                          prefix:
                              SvgPicture.asset('assets/icons/profile.svg')),
                      SizedBox(
                        height: 10,
                      ),
                      ExpressTextField(
                          hint: 'الجنسية',
                          prefix: SvgPicture.asset(
                              'assets/icons/flight_international.svg')),
                      SizedBox(
                        height: 15,
                      ),
                      TextFieldHeader(text: 'بطاقة الاحوال / الإقامة'),
                      NoticText(text: 'كما هو مدون بالبطاقة او الإقامة'),
                      SizedBox(
                        height: 10,
                      ),
                      ExpressTextField(
                          hint: 'الرقم',
                          prefix:
                              SvgPicture.asset('assets/icons/id_card.svg')),
                      SizedBox(
                        height: 10,
                      ),
                      ExpressTextField(
                          hint: 'المدينة',
                          prefix: SvgPicture.asset('assets/icons/city.svg')),
                      SizedBox(
                        height: 10,
                      ),
                      ExpressTextField(
                          hint: 'الحى',
                          prefix:
                              SvgPicture.asset('assets/icons/location.svg')),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: size.width * 0.6,
                            child: ExpressTextField(
                              hint: 'رقم الجوال',
                            ),
                          ),
                          SarFlagWidget(
                            size: size.width * 0.3,
                            outline: true,
                            filled: true,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ExpressTextField(
                          hint: 'البريد الالكترونى',
                          prefix: SvgPicture.asset('assets/icons/email.svg')),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.42,
                        child: ExpressButton(
                          child: Text('التالى'),
                          style: ExpressButtonStyle.secondary,
                          onPressed: () {
                            setState(() {
                              personal = false;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          )
        : WillPopScope(
      onWillPop: ()async{
        setState(() {
          personal = true;
        });
        return false;
      },
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: Container(
                height: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: 45,
                        ),
                        HeaderText(text: 'تسجيل جديد'),
                        SizedBox(
                          height: 25,
                        ),
                        TextFieldHeader(text: 'معلومات المركبة'),
                        SizedBox(
                          height: 10,
                        ),
                        ExpressTextField(
                            hint: 'تفاصيل المركبة',
                            prefix:
                                SvgPicture.asset('assets/icons/profile.svg')),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            SizedBox(
                              width: size.width * 0.43,
                              child: ExpressTextField(
                                  hint: 'رقم اللوحة',
                                  prefix: SvgPicture.asset(
                                      'assets/icons/flight_international.svg')),
                            ),
                            SizedBox(
                              width: size.width * 0.43,
                              child: ExpressTextField(
                                  hint: 'تاريخ الإنتهاء',
                                  prefix: SvgPicture.asset(
                                      'assets/icons/flight_international.svg')),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFieldHeader(text: 'صور مطلوبة'),
                        NoticText(text: 'المرفقات: بطاقه الاحوال / الإقامه - الهوية - الرخصة - الإقامة - صورة   للمركبة -صورة شخصية للمندوب '),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PickImageWidget(title: 'الهوية',onPressed: (){}),
                            PickImageWidget(title:'رخصة السير الامامية' ,onPressed: (){}),
                            PickImageWidget(title: 'الاستمارة',onPressed: (){}),
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.42,
                          child: ExpressButton(
                            child: Text('التالى'),
                            style: ExpressButtonStyle.secondary,
                            onPressed: () {

                            },
                          ),
                        ),
                        SizedBox(width: 15,),
                        SizedBox(
                          width: size.width * 0.42,
                          child: ExpressButton(
                            child: Text('السابق'),
                            style: ExpressButtonStyle.primary,
                            onPressed: () {
                              setState(() {
                                personal = true;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
        );
  }
}
