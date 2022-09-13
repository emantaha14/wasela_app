import 'package:flutter/material.dart';

import 'ask a question.dart';

class AddYourQuestion extends StatefulWidget{
  @override
  State<AddYourQuestion> createState() => _AddYourQuestion();
}

class _AddYourQuestion extends State<AddYourQuestion> {
  List <String> Question1 = ['is visa is available?','','',' ',''];
  List <String> Question2 = ['a','b','c','d'];
  List <String> Question3 = ['a','b','c','d'];



  String ? value ;
  String ? make;
  String ? model;

  int currentIndex =0 ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(top:10,left: 30),
          child: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff1c1447),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top:10,right: 10,left: 30),
            child: Text(
              'Most common questions',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: 'Roboto',
                fontStyle: FontStyle.normal,
                color: Color(0xff1c1447),
              ),
            ),
          ),
          SizedBox(height: 10,),

          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top:5,right: 40,left: 40),
              child: Column(
                children: [
                  Container(
                    height: 200,
                      width:200,
                      child: Image.asset('images/setting.png',)),

                  SizedBox(height: 30,),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color:Colors.grey[200],
                      border:Border.all(color: Colors.black38 ,width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: Padding(
                          padding: const EdgeInsets.all(9),
                          child: Text('Is cash payment available?',style: TextStyle(fontSize:18),),
                        ),
                        icon: Icon(Icons.arrow_drop_down, color: Color(0xff1c1447),),
                        isExpanded: true,
                        iconSize: 36,
                        value: value,
                        items: Question1.map(buildMinueItem).toList(),
                        onChanged: (value)=> setState(()=> this.value = value) ,
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color:Colors.grey[200],
                      border:Border.all(color: Colors.black38 ,width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: Padding(
                          padding: const EdgeInsets.all(9),
                          child: Text('Can I request immediate service ? ',style: TextStyle(fontSize:18),),
                        ),
                        icon: Icon(Icons.arrow_drop_down, color: Color(0xff1c1447),),
                        isExpanded: true,
                        iconSize: 36,
                        value: model,
                        items:Question3.map(buildMinueItem).toList(),
                        onChanged: (value)=> setState(()=> this.model = value) ,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color:Colors.grey[200],
                      border:Border.all(color: Colors.black38 ,width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: Padding(
                          padding: const EdgeInsets.all(9),
                          child: Text('Do vehicle details appear on order? ',style: TextStyle(fontSize:18),),
                        ),
                        icon: Icon(Icons.arrow_drop_down, color: Color(0xff1c1447),),
                        isExpanded: true,
                        iconSize: 36,
                        value: model,
                        items:Question3.map(buildMinueItem).toList(),
                        onChanged: (value)=> setState(()=> this.model = value) ,
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                     Container(
                       width: double.infinity,
                       height: 45,
                       child: ElevatedButton(

                        onPressed: () {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>AskAQuestion()));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(
                                28, 20, 71, 1) ,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(
                                  20,
                                ))// Background color
                        ),

                          child: Text(
                            "Ask A question",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                    ),



                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
        ],

      ),

      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color(0xFF1c1447),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: 'Help'),
          BottomNavigationBarItem(icon: Icon(Icons.add_alert), label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }


  }

  DropdownMenuItem<String> buildMinueItem (String item)=> DropdownMenuItem(value: item, child: Padding(
    padding: const EdgeInsets.all(8.0),
    child:   Text(
      item,
      style: TextStyle(fontSize: 20),
    ),
  ),);
