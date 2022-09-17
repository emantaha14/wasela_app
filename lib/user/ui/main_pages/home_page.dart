// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wasela/core/resources/constants_variables.dart';
import 'package:wasela/core/style/colors.dart';
import 'package:wasela/user/data/models/image_model.dart';
// import 'car_wash_workshops.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nearst Workshop',
                  style: TextStyle(
                      color: kBlack, fontWeight: FontWeight.bold, fontSize: 28),
                ),
                SizedBox(height: 1.h,),
                Text(
                  'Auto car workshops were you can go to fix or wash your car',
                  style: TextStyle(color: kGrey),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 190,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return upScroll(HomepageImage.nearsetWorkshopImages[index]);
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      width: 20,
                    ),
                    itemCount: HomepageImage.nearsetWorkshopImages.length,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text('Services',
                    style: TextStyle(
                        color: kBlue, fontWeight: FontWeight.bold, fontSize: 28)),
                SizedBox(height: 1.h,),
                Text(
                  'Car services which can you come to your lacation to provide you with the help you need',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 190,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return downScroll(HomepageImage.servicesImages[index]);
                      },
                      separatorBuilder: (context, index) => SizedBox(
                            width: 20,
                          ),
                      itemCount: HomepageImage.servicesImages.length,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget upScroll(ImageModel user) => Row(
        children: [
          Container(
            width: 220,
            height: 180,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(17)),
            child: MaterialButton(
              height: 180,
              onPressed: () {

                /// remember add CarWashWorkshops page
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) => CarWashWorkshops(),));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17)),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(bottom: 8.0),
                child: Column(
                  children: [
                    Expanded(
                      child: SizedBox(
                          height: 140,
                          width: 180,
                          child: Image(image: AssetImage(user.image))),
                    ),
                    Text(
                      user.text,
                      style: TextStyle(
                          color: kBlue,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      );

  Widget downScroll(ImageModel user) => Row(
        children: [
          Container(
            width: 220,
            height: 180,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(17)),
            child: MaterialButton(
              height: 180,
              onPressed: () {
                /// remember to add navigator
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17)),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(bottom: 8.0),
                child: Column(
                  children: [
                    Expanded(
                      child: SizedBox(
                          height: 140,
                          width: 180,
                          child: Image(image: AssetImage(user.image))),
                    ),
                    Text(
                      user.text,
                      style: TextStyle(
                          color: kBlue,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      );
}




/// draft

  // class Images {
  //   final String image;
  //
  //   final String text;
  //
  //   Images({required this.image, required this.text});
  // }

  // List<Images> images = [
  //   Images(image: "images/wash.png", text: ('Car wash')),
  //   Images(image: "images/onbarding2.png", text: ('Mechanical')),
  //   Images(image: "images/wash.png", text: ('Electrician')),
  //   Images(image: "images/wash.png", text: ('Painting & Denting')),
  //   Images(image: "images/wash.png", text: ('Wheel aligment'))
  // ];
  //
  // List<Images> down = [
  //   Images(image: 'images/home.png', text: 'Fuel Delivery'),
  //   Images(image: 'images/home.png', text: 'Engine oil change'),
  //   Images(image: 'images/home.png', text: 'Battery service'),
  //   Images(image: 'images/home.png', text: 'Tyre change'),
  // ];

