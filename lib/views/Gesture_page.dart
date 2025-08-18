import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class GesturePage extends StatefulWidget {
  const GesturePage({super.key});
  static const String routeName = 'GesturePage';

  @override
  State<GesturePage> createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(tr('Hello_message'),
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(onPressed: () {
            ChangeLang();
          },
            child: Text("Changes Lang"),
          ),
        ],
      ),
    );
    }
    ChangeLang(){
    if(context.locale == Locale('en', 'US')){
      (context.setLocale(Locale('ar', 'EG')));
    }else{
      (context.setLocale(Locale('en', 'US')));

    }
}
  }


