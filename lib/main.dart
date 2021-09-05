import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homework/const.dart';
import 'package:homework/login_screen.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: [Locale('en', ''), Locale('ar', '')],
    path: 'assets/translations',
    useOnlyLangCode: true,
    saveLocale: true,
    fallbackLocale: Locale('en', ''),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // Locale langLoale = Locale('en', '');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(bodyText1: TextStyle()),
        fontFamily: 'Lobster',
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.light),
          elevation: 0.0,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: LogInScreen(),
    );
  }
}
