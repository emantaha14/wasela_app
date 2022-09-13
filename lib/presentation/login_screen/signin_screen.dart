import 'package:flutter/material.dart';
import 'package:signin_screen/login_screen/login-screen.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color:const Color(0xFF1c1447),
          width: double.infinity,
          child :
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Let\'s start ',style:TextStyle(fontWeight: FontWeight.bold,
                color: Colors.white,fontSize:40)),
                SizedBox(height:100,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Column(
                         children: [
                           Container(
                             width:150,
                             height: 48,
                             child: FlatButton(
                                color: Color(0xFF1c1447),
                              shape:RoundedRectangleBorder(side:BorderSide(
                                color:Colors.white,
                                width:1,
                                style: BorderStyle.solid
                              ),
                              borderRadius: BorderRadius.circular(50)),
                                  onPressed: (){
                                  Navigator.push(context,
                                  MaterialPageRoute(builder:
                                  (context) => LogIn(),));
                                  },child:Text('car owner',
                              style: TextStyle(color:Colors.white,
                              fontSize: 20),),
                              ),
                           ),
                           Text('service recipient',style:TextStyle(color: Colors.white))
                         ],
                       ),
                       SizedBox(width: 30,),
                       Column(
                           children:[Container(
                         width:150,
                         height: 48,
                         child: FlatButton(
                           color: Color(0xFF1c1447),
                           shape:RoundedRectangleBorder(side:BorderSide(
                               color:Colors.white,
                               width:1,
                               style: BorderStyle.solid
                           ),
                               borderRadius: BorderRadius.circular(50)),
                           onPressed: (){},child:Text('worker',
                           style: TextStyle(color:Colors.white,fontSize: 20),),
                         ),
                       ),
                             Text('service provider',style: TextStyle(color:Colors.white),)]
                       ),

                     ],
                   )

              ],
            )
        )
    );
  }

}