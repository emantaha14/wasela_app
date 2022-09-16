import 'package:flutter/material.dart';

class AddYourCar extends StatefulWidget{
  @override
  State<AddYourCar> createState() => _AddYourCarState();
}

class _AddYourCarState extends State<AddYourCar> {
  List <String> items = ['Mansoura','Alex','Cairo','Poorsaid ','Tanta'];
  List <String> makes = ['a','b','c','d'];
  List <String> models = ['BM','Marcides','Kia','fsd'];
  List <String> years = ['2021','2022','2023','2024'];


  String ? value ;
  String ? make;
  String ? model;
  String ? year;

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
           child: Container(
             child: Padding(
               padding: const EdgeInsets.only(top: 135,left:30),
               child: Text('Add Your Car',style: TextStyle(fontSize:27,fontWeight: FontWeight.bold,color: Colors.white),),
             ),
             decoration: BoxDecoration(
               color:Color(0xFF1c1447)
             ),
           ),
         ),
         Expanded(
           flex: 3,
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
                       child: Text('City',style: TextStyle(fontSize:18),),
                     ),
                       icon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                       isExpanded: true,
                       iconSize: 36,
                       value: value,
                       items: items.map(buildMinueItem).toList(),
                       onChanged: (value)=> setState(()=> this.value = value) ,
                     ),
                   ),
                 ),
                 SizedBox(height: 10,),
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
                         child: Text('Make',style: TextStyle(fontSize:18),),
                       ),
                       icon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                       isExpanded: true,
                       iconSize: 36,
                       value: make,
                       items: makes.map(buildMinueItem).toList(),
                       onChanged: (value)=> setState(()=> this.make = value) ,
                     ),
                   ),
                 ),
                 SizedBox(height: 10,),
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
                         child: Text('Model',style: TextStyle(fontSize:18),),
                       ),
                       icon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                       isExpanded: true,
                       iconSize: 36,
                       value: model,
                       items: models.map(buildMinueItem).toList(),
                       onChanged: (value)=> setState(()=> this.model = value) ,
                     ),
                   ),
                 ),
                 SizedBox(height: 10,),
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
                         child: Text('Select year',style: TextStyle(fontSize:18),),
                       ),
                       icon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                       isExpanded: true,
                       iconSize: 36,
                       value: year,
                       items: years.map(buildMinueItem).toList(),
                       onChanged: (value)=> setState(()=> this.year = value) ,
                     ),
                   ),
                 ),
                 SizedBox(height: 10,),
                 Container(
                   height: 40,
                   child: TextFormField(
                     style: TextStyle(fontSize: 20),
                     controller: TextEditingController(),
                     keyboardType: TextInputType.phone,
                     decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                         label: Text('Reg/plate number',style: TextStyle(fontSize: 18),),
                     ),

                   ),
                 ),
                 SizedBox(height: 10,),
                 Container(
                   height: 40,
                   child: TextFormField(
                     style: TextStyle(fontSize: 20),
                     controller: TextEditingController(),
                     keyboardType: TextInputType.phone,
                     decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                         label: Text('Chasis number',style: TextStyle(fontSize: 18),),
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
                     child: TextButton(onPressed:(){}, child:Text('Save My Car',
                       style: TextStyle(fontSize: 23,fontWeight:FontWeight.bold,color: Colors.white ),))),
                 SizedBox(height: 20,),
                 Text('you can add more cars from the menu section later',style: TextStyle(
                     fontSize: 12,color: Color(0xFF1c1447)),)


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

DropdownMenuItem<String> buildMinueItem (String item)=> DropdownMenuItem(value: item, child: Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Text(
    item,
    style: TextStyle(fontSize: 20),
  ),
),);
}