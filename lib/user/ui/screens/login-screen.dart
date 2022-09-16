// import 'package:flutter/material.dart';
// import 'package:signin_screen/login_screen/sign_up.dart';
// import 'package:signin_screen/login_screen/signin_screen.dart';

// class LogIn extends StatelessWidget {
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return  SafeArea(
//       child: Scaffold(
//         backgroundColor: Color(0xFF1c1447),
//         body: Column(mainAxisAlignment: MainAxisAlignment.end,
//             crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                               flex: 2,
//                               child: Container(
//                                 color: Color(0xff1c1447),
//                                 child: Padding(
//                                   padding: const EdgeInsetsDirectional.only(top:150,start: 20),
//                                     child: Text(
//                                         "Welcome to Wasela !",
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.w700,
//                                             fontSize:35,
//                                           color: Colors.white,
//                                       )
//                                       ),
//                                   ),
//                               ),
//                               ),
//                           Expanded(
//                             flex: 5,
//                             child: Container(
//                               width: double.infinity,
//                               decoration: const BoxDecoration(
//                                   color:Color(0xFFEEEEEE),
//                                   borderRadius: BorderRadius.only(
//                                     topRight: Radius.circular(40.0),
//                                     topLeft: Radius.circular(40.0),
//                                   ),

//                               ),

//                               child: Padding(
//                                 padding: const EdgeInsets.all(24.0),
//                                 child: Column(
//                                     children: [
//                                       const SizedBox(
//                                         height: 50,
//                                       ),
//                                       Container(
//                                         height: 45,
//                                         child: TextFormField(

//                                           keyboardType: TextInputType.emailAddress,
//                                           decoration: InputDecoration(


//                                             border: OutlineInputBorder(

//                                               borderRadius: BorderRadius.circular(8.0),
//                                               borderSide: BorderSide.none,
//                                             ),
//                                             filled: true,
//                                             fillColor: Colors.white,

//                                             hintText: "Email",
//                                           ),


//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 20.0,
//                                       ),
//                                       Container(
//                                         height: 45,
//                                         child: TextFormField(
//                                           keyboardType: TextInputType.visiblePassword,
//                                           decoration: InputDecoration(
//                                             border: OutlineInputBorder(
//                                               borderRadius: BorderRadius.circular(8.0),
//                                               borderSide: BorderSide.none,
//                                             ),
//                                             filled: true,
//                                             fillColor: Colors.white,
//                                             hintText: "Password",
//                                           ),
//                                         ),
//                                       ),
//                                       Expanded(
//                                         child: Row(
//                                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                           children: [
//                                             Container(
//                                               width: 160,
//                                               height: 55,
//                                               child: ElevatedButton(
//                                                 onPressed: () {},
//                                                 style: ElevatedButton.styleFrom(
//                                                     primary: Color.fromRGBO(
//                                                         28, 20, 71, 1) ,
//                                                     shape: RoundedRectangleBorder(
//                                                         borderRadius:
//                                                         BorderRadius.circular(
//                                                           20,
//                                                         ))// Background color
//                                                 ),
//                                                 child: const Padding(
//                                                   padding:
//                                                   EdgeInsets.symmetric(vertical: 16.0),
//                                                   child: Text(
//                                                     "Sign In",
//                                                     style: TextStyle(
//                                                       color: Colors.white,
//                                                       fontSize: 22,
//                                                       fontWeight: FontWeight.w500,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                             Container(
//                                               width: 160,
//                                               height: 55,
//                                               child: ElevatedButton(
//                                                 onPressed: () {
//                                                   Navigator.push(context, 
//                                                   MaterialPageRoute(builder: (context)=>SignUp()));
//                                                 },
//                                                 style: ElevatedButton.styleFrom(
//                                                     primary: Color.fromRGBO(
//                                                         242, 242, 242, 1),
//                                                     side: BorderSide( color: Color(0xff1c1447), width: 2),
//                                                     shape: RoundedRectangleBorder(
//                                                         borderRadius:
//                                                         BorderRadius.circular(
//                                                           20,
//                                                         ))
//                                                 ),
//                                                 child: const Padding(
//                                                   padding:
//                                                   EdgeInsets.symmetric(vertical: 16.0),
//                                                   child: Text(
//                                                     "Sign Up",
//                                                     style: TextStyle(
//                                                       color: Color(0xff1c1447),
//                                                       fontSize: 22,
//                                                       fontWeight: FontWeight.w500,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ]

//                                         ),
//                                       ),

//                                     ]),
//                               ),
//                             ),
//                           ),
//                         ]),
//                   ),






//     );
//   }
// }
