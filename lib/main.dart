import 'package:bigmart/View/Auth/varification.dart';
import 'package:bigmart/View/NavigationScreen/homescreen.dart';
import 'package:bigmart/View/NavigationScreen/profilescreen.dart';
import 'package:bigmart/View/Onbording/logo_screen.dart';
import 'package:bigmart/View/bottomnavigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home:BotttomNavigationbarScreen(),
        );
      }
    );
  }
}
