// import 'package:flutter/material.dart';
// import 'package:signin_screen/login_screen/signin_screen.dart';
// import 'package:signin_screen/worker_screen/worker_page.dart';

// import '../../presentation/home_screens/ask a question.dart';

// class HomePageOrders extends StatefulWidget{
//   @override
//   State<HomePageOrders> createState() => _HomePageOrdersState();
// }

// class _HomePageOrdersState extends State<HomePageOrders> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: Colors.white,
//         leading: Padding(
//           padding: EdgeInsets.only(top:10,left: 30),
//           child: Icon(
//             Icons.arrow_back_ios,
//             color: Color(0xff1c1447),
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(15),
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Orders',
//                   style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.w600,
//                     fontFamily: 'Roboto',
//                     fontStyle: FontStyle.normal,
//                     color: Color(0xff1c1447),
//                   ),
//                 ),
//                 SizedBox(height: 6),
//                 Text(
//                   'Car owners who ask for services ',
//                   style: TextStyle(
//                       fontSize: 12,
//                       fontWeight: FontWeight.w400,
//                       fontFamily: 'Roboto',
//                       fontStyle: FontStyle.normal,
//                       color:  Color.fromRGBO(
//                           0, 0, 0, 0.6)
//                   ),
//                 ),
//                 SizedBox(height: 10.0),
//                 Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Expanded(
//                         child: Container(
//                           height: 45,
//                           child: ElevatedButton(
//                             onPressed: () {
//                               Navigator.push(context,
//                                   MaterialPageRoute(builder:(context) => WorkerPage(),));
//                             },
//                             style: ElevatedButton.styleFrom(
//                                 primary: Color.fromRGBO(
//                                     23, 16, 67, 1),
//                                 side: BorderSide( color: Color(0xff1c1447), width: 2),
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius:
//                                     BorderRadius.circular(
//                                       16,
//                                     ))
//                             ),
//                             child: Text(
//                               "Coming",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 23,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 15,),
//                       Expanded(
//                         child: Container(
//                           height: 45,
//                           child: ElevatedButton(
//                             onPressed: () {
//                               Navigator.push(context,
//                                   MaterialPageRoute(builder:(context) => WorkerPage(),));
//                             },
//                             style: ElevatedButton.styleFrom(
//                                 primary: Colors.white,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius:
//                                     BorderRadius.circular(
//                                       16,
//                                     ))// Background color
//                             ),
//                             child: Text(
//                               "precedent",
//                               style: TextStyle(
//                                 color:  Color.fromRGBO(
//                                     142, 142, 142, 1),
//                                 fontSize: 23,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),

//                     ]

//                 ),
//                 SizedBox(height: 20.0),

//                 Container(

//                   padding: EdgeInsetsDirectional.only(end:7),
//                   width: MediaQuery.of(context).size.width,
//                   height: 200,
//                   decoration: BoxDecoration(
//                     color:  Color.fromRGBO(
//                         243, 243, 243, 1),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,

//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 10, left: 20),
//                         child: Row(

//                           children: [
//                             Expanded(
//                               flex: 2,
//                               child: Text("20 Oct,2022 / 8:00 PM",
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 14.0,
//                                   color: Colors.red,
//                                 ),
//                               ),
//                             ),

//                             ElevatedButton(
//                               onPressed: () {
//                                 openDialog();
//                               },
//                               style: ElevatedButton.styleFrom(
//                                   primary: Colors.red,
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius:
//                                       BorderRadius.circular(
//                                         6,
//                                       ))// Background color
//                               ),
//                               child: const Padding(
//                                 padding:
//                                 EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
//                                 child: Text(
//                                   "NEW",

//                                   style: TextStyle(
//                                     color:  Colors.white,
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           InkWell(
//                             child: Padding(
//                               padding: const EdgeInsets.only(top: 10, left: 20),
//                               child: Icon(Icons.local_car_wash_rounded,color: Color(0xff1c1447),),
//                             ),
//                             onTap: (){
//                               //action code when clicked
//                               print("The icon is clicked");
//                             },
//                           ),
//                           SizedBox(width: 10.0),
//                           const Text("Car washing  ",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 17.0,
//                               )),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             children: [

//                             ],
//                           ),
//                         ],
//                       ),

//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           InkWell(
//                             child: Padding(
//                               padding: const EdgeInsets.only(top: 10, left: 20),
//                               child: Icon(Icons.location_on_rounded,color: Color(0xff1c1447),),
//                             ),
//                             onTap: (){
//                               //action code when clicked
//                               print("The icon is clicked");
//                             },
//                           ),
//                           SizedBox(width: 10.0),
//                           const Text("Mansoura , 2nd street",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 17.0,
//                               )),

//                         ],
//                       ),

//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(top: 10, left: 10,right: 10),
//                             child: Text("35 LE",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 17.0,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),

//                 ),
//                 SizedBox(height: 10,),
//                 Container(

//                   padding: EdgeInsetsDirectional.only(end:7),
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height/4,
//                   decoration: BoxDecoration(
//                     color:  Color.fromRGBO(
//                         243, 243, 243, 1),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsetsDirectional.only(top: 10),
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(top: 10, left: 20),
//                           child: Row(

//                             children: [
//                               Expanded(
//                                 child: Text("20 Oct,2022 / 8:00 PM",
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 14.0,
//                                     color: Colors.red,
//                                   ),
//                                 ),
//                               ),

//                               ElevatedButton(
//                                 onPressed: () {
//                                   openDialog();
//                                 },
//                                 style: ElevatedButton.styleFrom(
//                                     primary: Colors.green,
//                                     shape: RoundedRectangleBorder(
//                                         borderRadius:
//                                         BorderRadius.circular(
//                                           6,
//                                         ))// Background color
//                                 ),
//                                 child: Text(
//                                   "Acceptable",
//                                   style: TextStyle(
//                                     color:  Colors.white,
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             InkWell(
//                               child: Padding(
//                                 padding: const EdgeInsets.only(top: 10, left: 20),
//                                 child: Icon(Icons.local_car_wash_rounded,color: Color(0xff1c1447),),
//                               ),
//                               onTap: (){
//                                 //action code when clicked
//                                 print("The icon is clicked");
//                               },
//                             ),
//                             SizedBox(width: 10.0),
//                             const Text("Car washing  ",
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 17.0,
//                                 )),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               children: [

//                               ],
//                             ),
//                           ],
//                         ),

//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             InkWell(
//                               child: Padding(
//                                 padding: const EdgeInsets.only(top: 10, left: 20),
//                                 child: Icon(Icons.location_on_rounded,color: Color(0xff1c1447),),
//                               ),
//                               onTap: (){
//                                 //action code when clicked
//                                 print("The icon is clicked");
//                               },
//                             ),
//                             SizedBox(width: 10.0),
//                             const Text("Mansoura , 2nd street",
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 17.0,
//                                 )),

//                           ],
//                         ),

//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(top: 10, left: 10,right: 10),
//                               child: Text("35 LE",
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 17.0,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),

//                 ),
//               ]),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         fixedColor: Color(0xFF1c1447),
//         currentIndex: currentIndex,
//         onTap: (index) {
//           setState(() {
//             currentIndex = index;
//           });
//         },
//         type: BottomNavigationBarType.fixed,
//         elevation: 10,
//         items: [
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.local_car_wash_outlined,
//               ),
//               label: 'Current requests'),
//           BottomNavigationBarItem(icon: Icon(Icons.check_circle_rounded), label: 'Expired orders'),
//           BottomNavigationBarItem(icon: Icon(Icons.monetization_on_rounded), label: 'My Balance'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
//         ],
//       ),
//     );
//   }
//   Future openDialog()=> showDialog(context:context , builder: (context)=> AlertDialog(
//   titlePadding: EdgeInsets.all(5),
//   shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20)),
//   title: Column(
//   crossAxisAlignment: CrossAxisAlignment.center,
//   children: [
//     Icon(Icons.check_circle_rounded,color: Color(0xFF1c1447),size:30),
//   ],
//   ),
//   content: Text('You should sign in to see customer details',textAlign:TextAlign.center,
//   style: TextStyle(color:Color(0xFF1c1447),
//   fontSize:20,fontWeight: FontWeight.w500),),
//   actions: [
//   Center(
//   child: Container(
//   width: 180,
//   child: ElevatedButton(style:ElevatedButton.styleFrom(
//   primary: Color(0xFF1c1447),
//   shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(30))
//   ) ,onPressed: (){
//     Navigator.push(context,
//         MaterialPageRoute(builder:(context) =>SignIn(),));
//   }, child:Text('SignIn',style: TextStyle(
//   fontSize: 23,
//   fontWeight: FontWeight.w500,
//   color: Colors.white,
//   ),),
//   ),
//   ),
//   )
//   ],),);
// }
