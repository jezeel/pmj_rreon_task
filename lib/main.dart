import 'package:flutter/material.dart';
import 'package:pmj_reon_project/precentation/order/order_page.dart';
import 'package:pmj_reon_project/precentation/screens.dart';
import 'precentation/login_screen/login_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return  MainScreen();
        },
      ),
    );
  }
}



