import 'package:flutter/material.dart';
import 'package:test_sprints/views/hero%20page2.dart';

class HeroOne extends StatefulWidget {
  const HeroOne({super.key});
  static const String routeName = 'HeroOne';

  @override
  State<HeroOne> createState() => _HeroOneState();
}

class _HeroOneState extends State<HeroOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, HeroTwo.routeName);
              },
              child: Hero(
                  tag: ('HeroTest'),
                  child: Icon(
                    Icons.car_rental,
                    size: 70,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
