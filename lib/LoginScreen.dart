

import 'package:flutter/material.dart';
import 'package:test_sprints/HomeScreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});
  static const String routeName = 'LoginScreen';
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
 bool hiddenPassword=true;
 TextEditingController  emailController =  TextEditingController();
 TextEditingController  passwordController =  TextEditingController();
 final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,

      ),
      body: Form(
        key: _formKey,
        child: Column(children: [
          Image.asset("assets/images/flutter.png",scale: 8,),
          const SizedBox(height: 40,width: 30,),
           Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              controller: emailController,
              validator: (value){
                if(value != null && value!.isEmpty){
                  return('Email not valid');
                }
              },
              decoration: InputDecoration(labelText: "Email"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: passwordController,
              obscureText: hiddenPassword,
              validator: (value){
                if(value!=  null && value!.length <6){
                  return('Password must contain 6 numbers');
                }
              },
              decoration: InputDecoration(labelText: "Password",
              suffixIcon: IconButton(onPressed:(){
             togglePassword();
              }, icon: Icon(hiddenPassword?Icons.visibility:Icons.visibility_off))),
            ),
          ),
          ElevatedButton(onPressed: (){
            debugPrint(emailController.text);
            debugPrint(passwordController.text);

            if(_formKey.currentState!.validate()){
              Navigator.pushNamed(context, Homescreen.routeName);
            }else{
              SnackBar  snackBar = SnackBar(content: Text("Enter a valid data"),
              duration: Duration(seconds: 2),
              action: SnackBarAction(label: "ok",
                 onPressed: (){}),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
              child: const Text("Login",style: TextStyle(color: Colors.blue),))


        ],),
      ),

    );
    }
    togglePassword(){
      hiddenPassword =!hiddenPassword;
      setState(() {

      });
    }
    //
 Future<void> myDialog() async {
   return showDialog<void>(
     context: context, // user must tap button!
     builder: (BuildContext context) {
       return AlertDialog(
         title: const Text('Hello'),
         content:Text("Welcome to app"),
         actions: <Widget>[
           TextButton(
             child: const Text('Thanks!'),
             onPressed: () {
               Navigator.of(context).pop();
             },
           ),
         ],
       );
     },
   );
 }
  }

