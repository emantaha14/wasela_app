// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Orders Page',
              style: Theme.of(context)
                  .textTheme
                  .headline1
                  // ?.copyWith(fontSize: 20.sp),
            ),
            Text(
              'It\'ll be here soon ...',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}
