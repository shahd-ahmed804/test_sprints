import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});
 static const String routeName ='AnimationScreen';

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  bool isInitDesign = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                    setState(() {
                      isInitDesign =!isInitDesign;
                    });
                  },
                child: AnimatedContainer(
                    width: isInitDesign? 300:100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: isInitDesign? Colors.red : Colors.green,
                      borderRadius: BorderRadius.circular(isInitDesign?20:0),
                    ),
                    duration: Duration(milliseconds: 500),
                child: isInitDesign?
                  DefaultTextStyle(
                  style: const TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                ),
          textAlign: TextAlign.center,
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('Click Here'),
              TypewriterAnimatedText('To Login'),
            ],
          ),
        )
               : CircularProgressIndicator(color: Colors.white,)
                )
              ),
             SizedBox(
               height: 10,
             ),
            ],
          ),
        )
    );
  }
}

