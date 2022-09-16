// import 'package:flutter/material.dart';
// import 'package:signin_screen/home_screens/review_reservation.dart';




// class ProblemService extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(
//       elevation: 0,
//       backgroundColor: Colors.white,
//       leading: IconButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           icon: Icon(
//             Icons.keyboard_arrow_left,
//             color: Color(0xFF1c1447),
//             size: 40,
//           )),
//     ),
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.only(left: 30,right: 30),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Problems Service',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xFF1c1447)),),
//             SizedBox(height: 30,),
//             Text('Upload Image',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Color(0xFF1c1447)),),
//             SizedBox(height: 10,),
//             Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   InkWell(onTap:(){},child: Icon(Icons.add_box_rounded,size:55,color: Color(0xFF1c1447)),
//                      ),
//                 ],
//               ),
//               height: 80,
//               width: double.infinity,
//             decoration: BoxDecoration(
//               color:Colors.grey[200],
//               borderRadius: BorderRadius.circular(17)
//             ),),
//             SizedBox(height: 60,),
//             Text('Add discription',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
//             SizedBox(height: 10,),
//             Container(
//               padding: EdgeInsets.all(8),
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 borderRadius: BorderRadius.circular(17),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   style: TextStyle(fontSize: 20),
//                   minLines: 2,
//                   maxLines:3,
//                   keyboardType: TextInputType.multiline,
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                           borderSide: BorderSide.none
//                       ),
//                       contentPadding: EdgeInsets.only(bottom:30)),
//                 ),
//               )

//             ),
//             SizedBox(height:120,),
//             Container(
//               height: 45,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: Color(0xFF1c1447),
//                 borderRadius: BorderRadius.circular(17),
//               ),
//               child: TextButton(onPressed:(){
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context)=>ReviewReservation()));
//               },child: Text('Confirm',style: TextStyle(fontWeight: FontWeight.bold,
//                   fontSize: 25,color: Colors.white),), ),
//             )

            
//           ],
//         ),
//       ),
//     );
//   }

// }