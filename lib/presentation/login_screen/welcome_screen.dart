import 'package:flutter/material.dart';
import 'package:signin_screen/login_screen/nationality_screen.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1c1447),
      body:MaterialButton(
        onPressed: (){
          Navigator.push(context,
          
          MaterialPageRoute(builder: (context)=>Nationality()));
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(children: [
            Image(image: AssetImage('images/White Logo.jpg')),
            SizedBox(height: 60,),
            Text('Welcome!',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)
          ],),
        ),
      )
    );

  }

}