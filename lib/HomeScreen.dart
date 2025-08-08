

import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
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
      body: ListView(children: [
        //Image.asset("assets/images/flutter.png")
       Image.network("https://picsum.dev/image/15/view")
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
