import 'package:flutter/material.dart';

class Nationality extends StatefulWidget{
  @override
  State<Nationality> createState() => _NationalityState();
}

class _NationalityState extends State<Nationality> {
  List<String> cities =['Mansoura'];
  List<String> languages = ['Arabic','English'];
  String ?city;
  String ?language;
  @override
  Widget build(BuildContext context) {
   return Scaffold(

     resizeToAvoidBottomInset: false,
     backgroundColor: Color(0xFF1c1447),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.end,
       crossAxisAlignment: CrossAxisAlignment.start,

       children: [

         Expanded(
           flex: 3,
           child: Container(
             child: Padding(
               padding: const EdgeInsets.only(top: 40),
               child:Image(image: AssetImage('images/White Logo.jpg'),),
             ),
             decoration: BoxDecoration(
                 color:Color(0xFF1c1447)
             ),
           ),
         ),
         Expanded(
           flex: 2,
           child: Container(
             padding: EdgeInsets.only(top:70,right: 40,left: 40),
             child: Column(
               children: [
                 Container(
                   height: 40,
                   decoration: BoxDecoration(
                     border:Border.all(color: Colors.black38 ,width: 1),
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: DropdownButtonHideUnderline(
                     child: DropdownButton<String>(
                       hint: Padding(
                         padding: const EdgeInsets.all(9),
                         child: Text('City',style: TextStyle(fontSize:18,color: Colors.black),),
                       ),
                       icon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                       isExpanded: true,
                       iconSize: 36,
                       value: city,
                       items:cities.map(buildMenuItem).toList(),
                       onChanged: (value)=> setState(()=> this.city = value) ,
                     ),
                   ),
                 ),
                 SizedBox(height: 15,),
                 Container(
                   height: 40,
                   decoration: BoxDecoration(
                     border:Border.all(color: Colors.black38 ,width: 1),
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: DropdownButtonHideUnderline(
                     child: DropdownButton<String>(
                       hint: Padding(
                         padding: const EdgeInsets.all(9),
                         child: Text('Language',style: TextStyle(fontSize:18,color: Colors.black),),
                       ),
                       icon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                       isExpanded: true,
                       iconSize: 36,
                       value: language,
                       items: languages.map(buildMenuItem).toList(),
                       onChanged: (value)=> setState(()=> this.language = value) ,
                     ),
                   ),
                 ),
                 SizedBox(height: 50,),
                 Container(
                     height: 43,
                     width: double.infinity,
                     decoration: BoxDecoration(
                         color: Color(0xFF1c1447),
                         borderRadius: BorderRadius.circular(50)
                     ),
                     child: TextButton(onPressed:(){}, child:Text('Continue',
                       style: TextStyle(fontSize: 23,fontWeight:FontWeight.bold,color: Colors.white ),))),
                 SizedBox(height: 20,),


               ],
             ),
             height: 20,
             width: double.infinity,
             decoration: BoxDecoration(
                 color : Colors.white,
                 borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))

             ),
           ),

         ),

       ],
     ),
   );
  }
  DropdownMenuItem<String>buildMenuItem(String item) =>DropdownMenuItem(value: item,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(item,style: TextStyle(fontSize: 20),),
  ));
}