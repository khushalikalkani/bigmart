import 'package:bigmart/View/NavigationScreen/cartscreen.dart';
import 'package:bigmart/View/NavigationScreen/homescreen.dart';
import 'package:bigmart/View/NavigationScreen/profilescreen.dart';
import 'package:bigmart/View/NavigationScreen/shopscreen.dart';
import 'package:bigmart/View/NavigationScreen/storescreen.dart';
import 'package:bigmart/utils/common/appcolor.dart';
import 'package:flutter/material.dart';

class BotttomNavigationbarScreen extends StatefulWidget {
  const BotttomNavigationbarScreen({super.key});

  @override
  State<BotttomNavigationbarScreen> createState() =>
      _BotttomNavigationbarScreenState();
}

class _BotttomNavigationbarScreenState
    extends State<BotttomNavigationbarScreen> {
  int _selectedIndex = 0;
  static List WidgetOption = [
    HomeScreen(),
    ShopScreen(),
    StoreScreen(),
    CartScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WidgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/homepage (5) 1.png',
                height: 24,
                color:
                    _selectedIndex == 0 ? AppColor.primarycolor : Colors.black,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/shop 1.png',
                height: 24,
                color:
                    _selectedIndex == 1 ? AppColor.primarycolor : Colors.black,
              ),
              label: 'Shop'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/pin 1.png',
                height: 24,
                color:
                    _selectedIndex == 2 ? AppColor.primarycolor : Colors.black,
              ),
              label: 'Store'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/shopping-basket 1.png',
                height: 24,
                color:
                    _selectedIndex == 3 ? AppColor.primarycolor : Colors.black,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/user (6) 1.png',
                height: 24,
                color:
                    _selectedIndex == 4 ? AppColor.primarycolor : Colors.black,
              ),
              label: 'Profile')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.primarycolor,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
