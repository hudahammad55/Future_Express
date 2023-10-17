import 'package:flutter/material.dart';
import 'package:future_express/auth/screens/reset_password_screen.dart';
import 'package:future_express/auth/widgets/sar_flag_widget.dart';
import 'package:future_express/shared/widgets/body_text1.dart';
import 'package:future_express/shared/widgets/express_button.dart';
import 'package:future_express/shared/widgets/express_text_field.dart';
import 'package:future_express/shared/widgets/header_text.dart';

class ResetPaswwordBottomShet extends StatelessWidget {
  const ResetPaswwordBottomShet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                'assets/images/send_sms.png',
                fit: BoxFit.cover,
                height: 80,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const HeaderText(text: 'هل نسيت كلمة المرور ؟'),
            const SizedBox(
              height: 15,
            ),
            const BodyText1(text: 'سيتم ارسال رمز التحقق على رقم الهاتف الخاص بك'),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.6,
                  child: ExpressTextField(
                    hint: '0123456789',
                  ),
                ),
                SarFlagWidget(
                  size: size.width * 0.3,
                  outline: true,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ExpressButton(
              child: const Text('استعادة'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const ResetPasswordScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
