

import 'package:flutter/material.dart';
import 'package:test_sprints/navbar%20pages/home.dart';
import 'package:test_sprints/navbar%20pages/profile.dart';
import 'package:test_sprints/navbar%20pages/settings.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  static const String routeName = 'Homescreen';
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = 0 ;
  List<Widget> Pages =[
    Home(),
    Profile(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.8,
        child: ListView(
          children: [
            SizedBox(height: 200,),
          ListTile(
            title: Text("Contact us"),
            subtitle:Text("Contact info") ,
            trailing: Icon(Icons.contact_mail),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              title: Text("Log out"),
              subtitle:Text("Contact info") ,
              trailing: Icon(Icons.logout),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Pages [selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
          onTap: onItemTapped,
          items:[
            BottomNavigationBarItem(label: "Home" , icon:Icon (Icons.home)),
            BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
            BottomNavigationBarItem(label: "Settings", icon: Icon(Icons.settings)),
          ]),
    );
  }
  onItemTapped (int index){
    selectedIndex = index ;
    setState(() {

    });
  }
}
