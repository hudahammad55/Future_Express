import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:future_express/shared/palette.dart';
import 'package:future_express/shared/router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await Future.delayed(Duration(seconds: 3));
  FlutterNativeSplash.remove();
  runApp(const FutureExpressApp());
}

class FutureExpressApp extends StatelessWidget {
  const FutureExpressApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Future Express',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.tajawalTextTheme(),
          dividerColor: Palette.greyColor,
          primaryColor: Palette.primaryColor,
          colorScheme:
              const ColorScheme.light().copyWith(primary: Palette.primaryColor),
          scaffoldBackgroundColor: Palette.greyColor.shade100,
          appBarTheme: const AppBarTheme(backgroundColor: Palette.whiteColor)),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('ar'),
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // arabic
      ],
    );
  }
}
