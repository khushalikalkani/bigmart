import 'package:bigmart/View/Auth/varification.dart';
import 'package:bigmart/View/NavigationScreen/homescreen.dart';
import 'package:bigmart/View/Onbording/logo_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const VarificationScreen(),
    );
  }
}
