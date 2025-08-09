

import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List name = ["Shahd","Ahmed","Yahya","nour","ramy","doha","reem"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(width: 300,color: Colors.white,),
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        centerTitle: true,
        title: Text("Title",
            style:TextStyle(fontSize: 30,fontFamily: 'Serif-SemiBoldItalic.ttf')

      ),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Action",
            style:TextStyle(fontSize: 30,fontFamily: 'Serif-SemiBoldItalic.ttf')),
        ),],
      ),
      body: Column(children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.yellow,
            width: 100,
            height: 100,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
            width: 100,
            height: 100,
          ),
        ),
      ],),
    floatingActionButton:
    FloatingActionButton(
    backgroundColor: Colors.cyanAccent,
    child: Icon(Icons.add,color: Colors.white,),
    onPressed: (){}
    ),
    bottomNavigationBar: Container(height: 70,color: Color(0xFF2C3E50)),
    );
    }
  }

