import 'package:flutter/material.dart';
import 'package:signin_screen/login_screen/welcome_screen.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: MaterialButton(
        onPressed: (){
          Navigator.push(context
              ,MaterialPageRoute(
                  builder: (context)=>WelcomeScreen()));
        },
          child: Center(
              child: Image(
                image: AssetImage(
                    'images/Logo (1).jpg'),)))
      ,
    );
  }

}