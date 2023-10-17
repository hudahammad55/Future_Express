import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_express/shared/widgets/express_button.dart';
import 'package:future_express/shared/widgets/express_text_field.dart';

import '../../shared/palette.dart';
import '../../shared/widgets/header_text.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 80,
            ),
            Center(
              child: Image.asset(
                'assets/images/new_password.png',
                fit: BoxFit.cover,
                height: 80,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const HeaderText(text: 'إنشاء كلمة مرور جديدة'),
            const SizedBox(
              height: 40,
            ),
            ExpressTextField(
              hint: 'كلمة المرور',
              prefix: SvgPicture.asset(
                'assets/icons/lock.svg',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ExpressTextField(
              hint: 'تأكيد كلمة المرور',
              prefix: SvgPicture.asset(
                'assets/icons/lock.svg',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const ExpressButton(child: Text('ارسال'))
          ],
        ),
      ),
    );
  }
}
