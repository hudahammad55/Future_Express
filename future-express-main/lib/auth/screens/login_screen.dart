import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_express/auth/screens/sign_up_screen.dart';
import 'package:future_express/auth/widgets/sar_flag_widget.dart';
import 'package:future_express/home/screens/home_screen.dart';
import 'package:future_express/home/layout/express_layout_screen.dart';
import 'package:future_express/shared/palette.dart';
import 'package:future_express/shared/utils/my_utils.dart';
import 'package:future_express/shared/widgets/express_button.dart';

import '../widgets/reset_password_bottom_sheet.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final bool _loading = false;
  //
  // final Map<String, String> _validation = {};
  //
  // Future<void> _login() async {
  //   final isValid = _form.currentState!.validate();
  //
  //   if (!isValid) return;
  // }

  //final _form = GlobalKey<FormState>();
  void _logIn(BuildContext context) {
    Navigator.of(context)
        // .push(MaterialPageRoute(builder: (con) => const SignUpScreen()));
        .push(MaterialPageRoute(builder: (con) => const ExpressLayoutScreen()));

  }

  @override
  Widget build(BuildContext context) {
    // final t = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: size.height * 0.06,
            ),
            Image.asset(
              'assets/icons/lines.png',
              fit: BoxFit.fill,
              width: size.width * 0.3,
              height: 50,
            ),
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/logo_splash.png',
                fit: BoxFit.fill,
                width: size.width * 0.6,
                height: 75,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 200,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 80),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/log_bg.png',
                                  height: 60,
                                  width: 110,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 13,
                              right: 15,
                              width: 120,
                              child: Text(
                                'تسجيل',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26,
                                    color: Colors.black),
                              ),
                            ),
                            const Positioned(
                              top: 13,
                              right: 100,
                              child: Text(
                                'الدخول',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'سجل الدخول او انشئ حساب جديد',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * .55,
                        child: TextField(
                          style: const TextStyle(color: Palette.blackColor),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            constraints: BoxConstraints(
                              maxWidth: size.width * .6,
                              minWidth: size.width * .6,
                            ),
                            hintText: 'رقم الجوال',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      SarFlagWidget(size: size.width * 0.22),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: size.width * .85,
                    child: TextField(
                      style: const TextStyle(color: Palette.blackColor),
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.only(top: 14, bottom: 10),
                        isDense: true,
                        hintText: 'كلمة المرور',
                        prefixIcon: SvgPicture.asset(
                          'assets/icons/lock.svg',
                        ),
                        prefixIconConstraints: const BoxConstraints(
                          maxHeight: 30,
                          maxWidth: 30,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ExpressButton(
                    loading: false,
                    onPressed: () => _logIn(context),
                    child: const Text('تسجيل الدخول'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        ' هل نسيت كلمة السر؟',
                        style: TextStyle(
                          color: Palette.greyColor,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: _resetPassword,
                        child: Container(
                          padding: const EdgeInsets.only(
                            bottom: 3,
                          ),
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: Palette.primaryColor,
                            width: 1.5,
                          ))),
                          child: const Text(
                            'إعادة ضبط كلمة المرور',
                            style: TextStyle(
                              color: Palette.primaryColor,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        alignment: Alignment.bottomCenter,
                        'assets/images/bottom_login2.png',
                        fit: BoxFit.fitWidth,
                        width: size.width * 0.35,
                        height: size.height * 0.22,
                      ),
                      Image.asset(
                        alignment: Alignment.bottomCenter,
                        'assets/images/bottom_login1.png',
                        fit: BoxFit.fitWidth,
                        width: size.width * 0.45,
                        height: size.height * 0.22,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _resetPassword() {
    showMyBottomSheet(context, ResetPaswwordBottomShet());
  }
}
