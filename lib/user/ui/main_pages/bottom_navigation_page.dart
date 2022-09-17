// ignore_for_file: prefer_const_constructors, must_be_immutable

/// External Packages
import 'package:flutter_bloc/flutter_bloc.dart';

/// Core Packages
import 'package:flutter/material.dart';

/// App Files
import 'package:wasela/core/style/colors.dart';
import 'package:wasela/user/logic/bottom_navigation/bottom_navigation_cubit.dart';
import 'package:wasela/user/ui/main_pages/help_page.dart';
import 'package:wasela/user/ui/main_pages/home_page.dart';
import 'package:wasela/user/ui/main_pages/orders_page.dart';
import 'package:wasela/user/ui/main_pages/settings_page.dart';

class BottomNavigationPage extends StatelessWidget {
  BottomNavigationPage({super.key});

  List<Widget> screens = [
    HomePage(),
    HelpPage(),
    OrdersPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
      builder: (context, state) {
        var cubit = BottomNavigationCubit.get(context);
        return Scaffold(
          body: IndexedStack(
            index: cubit.currentIndex,
            children: screens,
            ),
          bottomNavigationBar: homePageBottomNavigationBar(cubit),
        );
      },
    );
  }

  homePageBottomNavigationBar(cubit) {
    return BottomNavigationBar(
      fixedColor: kBlue,
      currentIndex: cubit.currentIndex,
      onTap: (index) {
        cubit.changeIndex(index);
      },
      type: BottomNavigationBarType.fixed,
      elevation: 10,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.help), label: 'Help'),
        BottomNavigationBarItem(icon: Icon(Icons.add_alert), label: 'Orders'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ],
    );
  }
}
