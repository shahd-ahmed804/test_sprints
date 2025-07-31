

import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hello World",
        style: TextStyle(
          fontSize: 30,color: Colors.black
        ),
      )
        ],
      ),
    );
  }

}

