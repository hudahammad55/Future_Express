import 'package:flutter/material.dart';
import 'package:future_express/auth/screens/new_password_screen.dart';
import 'package:future_express/shared/palette.dart';
import 'package:future_express/shared/widgets/body_text1.dart';
import 'package:future_express/shared/widgets/header_text.dart';
import 'package:future_express/shared/widgets/otp_form.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.whiteColor.withAlpha(0),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Palette.greyColor,
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Center(
              child: Image.asset(
                'assets/images/receive_sms.png',
                fit: BoxFit.cover,
                height: 80,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const HeaderText(text: 'ادخل الكود الذى ارسلناه اليك'),
            const SizedBox(
              height: 5,
            ),
            const BodyText1(
                text:
                    'لقد ارسلنا اليك الكود على الجوال الخاص بك من فضلك ادخل الكود لكى تستعيد حسابك'),
            const SizedBox(
              height: 5,
            ),
            const Text(
              '(970123456789+)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            OTPForm(
              buttonText: 'تحقق',
              phone: '012345678',
              onActivate: (otp) async {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const NewPasswordScreen()));
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
