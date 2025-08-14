import 'package:flutter/material.dart';
import 'package:test_sprints/HomeScreen.dart';
import 'package:test_sprints/LoginScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, fontFamily: 'Serif-SemiBoldItalic.ttf'),
      initialRoute: Loginscreen.routeName,
      routes: {
        Loginscreen.routeName: (context) => const Loginscreen(),
        Homescreen.routeName: (context) => const Homescreen(),
      },
    );
  }
}
