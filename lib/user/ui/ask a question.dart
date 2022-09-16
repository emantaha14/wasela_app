import 'package:flutter/material.dart';

class AskAQuestion extends StatefulWidget {
  const AskAQuestion({Key? key}) : super(key: key);

  @override
  State<AskAQuestion> createState() => _AskAQuestionState();
}
int currentIndex =0 ;

class _AskAQuestionState extends State<AskAQuestion> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: MaterialButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff1c1447),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
           Text(
             'Ask a question',
             style: TextStyle(
               fontSize: 25,
               fontWeight: FontWeight.w600,
               fontFamily: 'Roboto',
               fontStyle: FontStyle.normal,
               color: Color(0xff1c1447),
             ),
           ),

               SizedBox(height: 30,),
                Text(
                  'Write down your question here ',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.normal,
                      color:  Color.fromRGBO(
                          0, 0, 0, 0.6)
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: TextStyle(fontSize: 20),
                      minLines: 2,
                      maxLines:3,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none
                        ),
                          contentPadding: EdgeInsets.only(bottom:30)),
                    ),
                  ),


                  width: 400,
                  height: 150,
                  decoration: BoxDecoration(
      color:  Colors.grey[200],
                    border:Border.all( color:  Color.fromRGBO(
                        0, 0, 0, 0.25),width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),

                ),
                SizedBox(height: 30,),
                Text(
                  'Add a comment  ',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                      color:  Color.fromRGBO(
                          0, 0, 0, 0.6),

                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child:   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: TextStyle(fontSize: 20),
                      minLines: 2,
                      maxLines:3,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none
                          ),
                          contentPadding: EdgeInsets.only(bottom:30)),
                    ),
                  ),
                  width: 400,
                  height: 100,
                  decoration: BoxDecoration(
                    color:  Colors.grey[200],
                    border:Border.all( color:  Color.fromRGBO(
                        0, 0, 0, 0.25),width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),

                ),
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {

                      openDialog();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(
                            28, 20, 71, 1) ,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(
                              16,
                            ))// Background color
                    ),
                    child: Text(
                      "Send",textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
      ]),
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
      ),

    );
  }
  Future openDialog()=> showDialog(context:context , builder: (context)=> AlertDialog(
  titlePadding: EdgeInsets.all(5),
  shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20)),
  title: Column(
  children: [
  IconButton(onPressed: (){
    }, icon:Center(child: Icon(Icons.check_circle_rounded,color: Color(0xFF1c1447),size:30))),
  Center(child: Text('Thank you!',style: TextStyle(
      fontWeight: FontWeight.w500,
  fontSize: 25,
  color: Color(0xFF1c1447)),)),
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
  ],));
}
