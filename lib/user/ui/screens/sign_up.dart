// import 'package:flutter/material.dart';
// import 'package:signin_screen/login_screen/AddYourCar.dart';

// class SignUp extends StatefulWidget {
//   const SignUp({Key? key}) : super(key: key);

//   @override
//   SignUpState createState() => SignUpState();
// }

// class SignUpState extends State<SignUp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           decoration: const BoxDecoration(
//             color: Color(0xff1c1447),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                   flex: 2,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 36.0, horizontal: 24.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         Text(
//                           "Sign Up",
//                           style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 40,
//                               color: Colors.white),
//                         )
//                       ],
//                     ),
//                   )),
//               Expanded(
//                 flex: 5,
//                 child: Container(
//                   width: double.infinity,
//                   decoration: const BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                         topRight: Radius.circular(40.0),
//                         topLeft: Radius.circular(40.0),
//                       )),
//                   child: Padding(
//                     padding: const EdgeInsets.all(24.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Expanded(
//                               child: Container(
//                                 width: 210,
//                                 child: TextFormField(
//                                   keyboardType: TextInputType.text,
//                                   decoration: InputDecoration(
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(8.0),
//                                       borderSide: BorderSide.none,
//                                     ),
//                                     filled: true,
//                                     fillColor: Colors.grey[200],
//                                     hintText: "First Name",
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Expanded(
//                               child: Container(
//                                 width: 210,
//                                 child: TextFormField(
//                                   keyboardType: TextInputType.text,
//                                   decoration: InputDecoration(
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(8.0),
//                                       borderSide: BorderSide.none,
//                                     ),
//                                     filled: true,
//                                     fillColor: Colors.grey[200],
//                                     hintText: "Last Name",
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           keyboardType: TextInputType.emailAddress,
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8.0),
//                               borderSide: BorderSide.none,
//                             ),
//                             filled: true,
//                             fillColor: Colors.grey[200],
//                             hintText: "Email",
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           keyboardType: TextInputType.visiblePassword,
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8.0),
//                               borderSide: BorderSide.none,
//                             ),
//                             filled: true,
//                             fillColor: Colors.grey[200],
//                             hintText: "Password",
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             Expanded(
//                               flex: 1,
//                               child: Container(
//                                 width: 70,
//                                 child: TextFormField(
//                                   keyboardType: TextInputType.text,
//                                   decoration: InputDecoration(
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(8.0),
//                                       borderSide: BorderSide.none,
//                                     ),
//                                     filled: true,
//                                     fillColor: Colors.grey[200],
//                                     hintText: "+20",
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 5,
//                             ),
//                             Expanded(
//                               flex: 5,
//                               child: Container(
//                                 width: 350,
//                                 child: TextFormField(
//                                   keyboardType: TextInputType.number,
//                                   decoration: InputDecoration(
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(8.0),
//                                       borderSide: BorderSide.none,
//                                     ),
//                                     filled: true,
//                                     fillColor: Colors.grey[200],
//                                     hintText: "Phone Number",
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 50,
//                         ),
//                         Container(
//                           width: double.infinity,
//                           height: 40,
//                           child: ElevatedButton(
//                             style: ButtonStyle(
//                                 backgroundColor: MaterialStateProperty.all(
//                                   const Color(0xff1c1447),
//                                 ),
//                                 shape: MaterialStateProperty.all(
//                                     RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(50.0),
//                                 ))),
//                             onPressed: () {
//                               Navigator.push(context,
//                               MaterialPageRoute(builder: (context) => AddYourCar(),));
//                             },
//                             child: const Text(
//                               "Sign Up",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 20
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
