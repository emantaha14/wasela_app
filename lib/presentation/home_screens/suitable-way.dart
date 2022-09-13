

import 'package:flutter/material.dart';

class SuitAble extends StatefulWidget{
  @override
  State<SuitAble> createState() => _SuitAbleState();
}

class _SuitAbleState extends State<SuitAble> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.keyboard_arrow_left,
                color: Color(0xFF1c1447),
                size: 40,
              )),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsetsDirectional.only(end: 16,start: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
              InkWell(onTap: (){}, child:Container(
                      height: 30,width: 30,child: Image(image: AssetImage('images/squere.png'),))),

              ],),
              Row(children: [
                Text('pay the suitable way to you ',
                  style: TextStyle(color: Color(0xFF1c1447),fontWeight: FontWeight.bold,fontSize:26),),
              ],),
              SizedBox(height: 60,),
              Text('Shipping value',style: TextStyle(color: Colors.grey,fontSize: 20),),
              SizedBox(height:10),
              Container(
                decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(17)),
              height: 45,
                child: TextFormField(decoration:
                  InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(17))),),

              ),
              SizedBox(height:30),
              Text('Choose your payment method',style: TextStyle(color: Colors.grey,fontSize: 20),),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                      child: Container(
                        child:FlatButton(
                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center
                            ,
                            children: [
                            Image(image: AssetImage('images/apple.png')),
                            SizedBox(width: 5,),
                            Text('Pay',style: TextStyle(color: Colors.black87,fontSize:26,fontWeight: FontWeight.bold),),

                          ],),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        )
                        ,
                        decoration: BoxDecoration(
                          color: Colors.white,borderRadius: BorderRadiusDirectional.circular(15),boxShadow:
                            [BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius:7,
                              offset: Offset(2, 4),

                            )]
                        ),
                        height: 100,
                        width: 90,

                      ),
                    ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                      child:FlatButton(
                        onPressed: (){},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(height: 30,
                                width: 30,
                                child: Image(image: AssetImage('images/vodafone.png'))),
                            SizedBox(height: 5,),
                            Text('Vodafone cash',style: TextStyle(color: Colors.red,fontSize:15,fontWeight: FontWeight.bold),),

                          ],),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      )
                      ,
                      decoration: BoxDecoration(
                          color: Colors.white,borderRadius: BorderRadiusDirectional.circular(15),boxShadow:
                      [BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius:7,
                        offset: Offset(2, 4),

                      )]
                      ),
                      height: 100,
                      width: 90,

                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                      child:FlatButton(
                        onPressed: (){},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center
                          ,
                          children: [
                            Container(height: 30,
                                width: 30,
                                child: Image(image: AssetImage('images/visa.png'))),
                            SizedBox( height: 5,),
                            Text('visa',style: TextStyle(color: Colors.blue[900],fontSize:20,fontWeight: FontWeight.bold),),

                          ],),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      )
                      ,
                      decoration: BoxDecoration(
                          color: Colors.white,borderRadius: BorderRadiusDirectional.circular(15),boxShadow:
                      [BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius:7,
                        offset: Offset(2, 4),

                      )]
                      ),
                      height: 100,
                      width: 90,

                    ),
                  )

                ],
              ),
              SizedBox(height: 200,),
              Center(
                child: Container(
                  height: 45,
                  width: double.infinity,
                  child: FlatButton(
                    color: Color(0xFF1c1447),
                    shape:RoundedRectangleBorder(side:BorderSide(
                        color:Colors.white,
                        width:1,
                        style: BorderStyle.solid
                    ),
                        borderRadius: BorderRadius.circular(17)),
                    onPressed: (){
                      openDialog();
                    }
                    ,child:Text('Pay',
                    style: TextStyle(color:Colors.white,
                        fontSize: 30,fontWeight: FontWeight.w500),),

                  ),
                ),
              ),

            ],
          ),
        ),
      );
  }
  void backSpace(){
    Navigator.of(context).pop();
  }

  Future openDialog()=> showDialog(context:context , builder: (context)=> AlertDialog(
    titlePadding: EdgeInsets.all(5),
   shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20)),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(onPressed: (){
          backSpace();
        }, icon:Icon(Icons.backspace)),
        Center(child: Icon(Icons.check_circle_rounded,color: Color(0xFF1c1447),size:30)),
      ],
    ),
    content: Text('Your reservation has been successfully confirmed',textAlign:TextAlign.center,
      style: TextStyle(color:Color(0xFF1c1447),
          fontSize:20,fontWeight: FontWeight.w500),),
  actions: [
    Center(
      child: Container(
        width: 180,
        child: ElevatedButton(style:ElevatedButton.styleFrom(
          primary: Color(0xFF1c1447),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(30))
        ) ,onPressed: (){
          Navigator.of(context).pop();
        }, child:Text('Done',style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),),
        ),
      ),
    )
  ],),

  );
}