import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: Image(image: AssetImage('images/Logo (1).jpg'),))
      ,
    );
  }

}