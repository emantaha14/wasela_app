import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1c1447),
      body:Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(children: [
          Image(image: AssetImage('images/White Logo.jpg')),
          SizedBox(height: 60,),
          Text('Welcome!',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)
        ],),
      )
    );

  }

}