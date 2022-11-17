import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:lottie/lottie.dart';

class Temar extends StatefulWidget{
  static String id = "temer";
  @override
  _TemarState createState() => _TemarState() ;
}
class _TemarState extends State<Temar> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:2), navigatorToLoginPage);
  }
  void navigatorToLoginPage(){
    Navigator.pushNamed(context, WelcomeScreen.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('images/86826-chat-icon.json'),
            SizedBox(height: 30,),
            const CircularProgressIndicator(
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}