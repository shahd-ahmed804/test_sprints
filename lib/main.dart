import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_sprints/HomeScreen.dart';
import 'package:test_sprints/LoginScreen.dart';
import 'package:test_sprints/animation_screen.dart';
import 'package:test_sprints/views/Gesture_page.dart';
import 'package:test_sprints/views/hero%20page1.dart';
import 'package:test_sprints/views/hero%20page2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('ar', 'EG')],
        path: 'lang', // <-- change the path of the translation files
        fallbackLocale: Locale('en', 'US'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, fontFamily: 'Serif-SemiBoldItalic.ttf'),
      initialRoute: GesturePage.routeName,
      routes: {
        Loginscreen.routeName: (context) => const Loginscreen(),
        Homescreen.routeName: (context) => const Homescreen(),
        AnimationScreen.routeName: (context) => const AnimationScreen(),
        HeroOne.routeName: (context) => const HeroOne(),
        HeroTwo.routeName: (context) => const HeroTwo(),
        GesturePage.routeName : (context) => const GesturePage(),
      },
    );
  }
}
