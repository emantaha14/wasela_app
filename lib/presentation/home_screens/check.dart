import 'package:flutter/material.dart';

import 'engine_screen.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

// value set to false
  late final bool _value = true ;

// App widget tree
  @override
  Widget build(BuildContext context) {
      home:return  Scaffold(
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
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "pick a fuel type",
                    style: TextStyle(
                        color: Color(0xff1c1447),
                        fontSize: 25,
                        fontWeight: FontWeight.w700),),
                    SizedBox(height: 5,),
                    const Text("Same price as the petrol station"),
                    SizedBox(height: 10),
                    Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff1c1447),),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ), //BoxDecoration
                    child: CheckboxListTile(
                      title: const Padding(
                        padding: EdgeInsetsDirectional.only(bottom: 10),
                        child: Text('Fuel 95',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                      ),
                      subtitle: const Text('''LE 10.75 per litre
Higher performance'''),
                      autofocus: false,
                      activeColor: const Color(0xff1c1447),
                      checkColor: Colors.white,
                      selected: _value,
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          value != _value;
                        });
                      },
                    ), //CheckboxListTile
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff1c1447),),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ), //BoxDecoration
                    child: CheckboxListTile(
                      title: const Padding(
                        padding: EdgeInsetsDirectional.only(bottom: 10),
                        child: Text('Fuel 92',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                      ),
                      subtitle: const Text('''LE 9.25 per litre
Economic              '''),
                      autofocus: false,
                      activeColor: const Color(0xff1c1447),
                      checkColor: Colors.white,
                      selected: _value,
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          value != _value;
                        });
                      },
                    ), //CheckboxListTile
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff1c1447),),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ), //BoxDecoration
                    child: CheckboxListTile(
                      title: const Padding(
                        padding: EdgeInsetsDirectional.only(bottom: 8.0),
                        child: Text('Fuel 80',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                      ),
                      subtitle: const Text('LE 10.75 per litre'),
                      autofocus: false,
                      activeColor: const Color(0xff1c1447),
                      checkColor: Colors.white,
                      selected: _value,
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          value != _value;
                        });
                      },
                    ), //CheckboxListTile
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff1c1447),),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ), //BoxDecoration
                    child: CheckboxListTile(
                      title: const Padding(
                        padding: EdgeInsetsDirectional.only(bottom: 10),
                        child: Text('Natural Gas',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                      ),
                      subtitle: const Text('LE 3.75 per meter square'),
                      autofocus: false,
                      activeColor: const Color(0xff1c1447),
                      checkColor: Colors.white,
                      selected: _value,
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          value != _value;
                        });
                      },
                    ), //CheckboxListTile
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff1c1447),),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ), //BoxDecoration
                    child: CheckboxListTile(
                      title: Padding(
                        padding: const EdgeInsetsDirectional.only(bottom: 10),
                        child: const Text('solar',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                      ),
                      subtitle: const Text('LE 3.75 per meter square'),
                      autofocus: false,
                      activeColor: const Color(0xff1c1447),
                      checkColor: Colors.white,
                      selected: _value,
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          value != _value;
                        });
                      },
                    ), //CheckboxListTile
                  ),
                  SizedBox(height: 50,),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => ReviewScreen(),));
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: const Color.fromRGBO(
                                      23, 16, 67, 1),
                                  side: const BorderSide( color: Color(0xff1c1447), width: 2),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(
                                        16,
                                      ))
                              ),
                              child: const Text(
                                "Confirm",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ), //Center

    );
  }
}
