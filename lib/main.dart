// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:wasela/core/resources/asset_path.dart';
import 'package:wasela/core/style/themes.dart';
import 'package:wasela/user/logic/bottom_navigation/bottom_navigation_cubit.dart';
import 'package:wasela/user/logic/connectivity/connectivity_cubit.dart';
import 'package:wasela/user/ui/main_pages/bottom_navigation_page.dart';
import 'package:wasela/user/ui/main_pages/home_page.dart';
// import 'package:wasela/core/style/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: ((BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return MultiBlocProvider(
          providers: [

            BlocProvider<BottomNavigationCubit>(
              create: (BuildContext context) => BottomNavigationCubit(),
            ),
            /// to check network, remember add it
            // BlocProvider<ConnectivityCubit>(
            //   /// note: lazy is false only here and it's not in AuthCubit , remember to understand
            //   lazy: false,
            //   create: (BuildContext context) =>
            //       ConnectivityCubit()..initializeConnectivity(),
            // ),
          ],
          child: MaterialApp(
              title: 'Flutter Demo',
              theme: Apptheme.lightTheme,
              themeMode: ThemeMode.light,
              home: BottomNavigationPage(),
            ),
        );
      }),
    );
  }
}
