import 'package:flutter/material.dart';

class HeroTwo extends StatefulWidget {
  const HeroTwo({super.key});
  static const String routeName = 'HeroTwo';

  @override
  State<HeroTwo> createState() => _HeroTwoState();
}

class _HeroTwoState extends State<HeroTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Hero(
                  tag: ('HeroTest'),
                  child: Icon(
                    Icons.car_rental,
                    size: 150,
                  )),
              Text(
                "Rent Car",
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ],
      ),
    );
  }
}
