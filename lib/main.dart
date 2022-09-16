import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:wasela/core/resources/asset_path.dart';
// import 'package:wasela/core/style/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: ((BuildContext context, Orientation orientation, DeviceType deviceType) {
        return MaterialApp(
            title: 'Flutter Demo',
            // theme: AppThemes.lightTheme,
            themeMode: ThemeMode.light,
            home: Scaffold(
              appBar: AppBar(),
              body: Center(
                child: SvgPicture.asset(AppAssets.trash),
              ),
            ));
      }),
    );
  }
}
