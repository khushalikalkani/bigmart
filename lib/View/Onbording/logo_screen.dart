import 'package:bigmart/View/Onbording/page_view.dart';
import 'package:bigmart/View/bottomnavigationbar.dart';
import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_){
        return PageviewScreen();
      }), (route) => false);
    });
    super.initState();
  }
 // @override
  // void initState() {
  //   getinstance1();
  //   super.initState();
  // }

  Future getinstance1() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var geta = sharedPreferences.getString('username');

    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => geta == null
              ? PageviewScreen()
              : BotttomNavigationbarScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Appimage.logo,
                scale: 2,
              ),
              SizedBox(
                width: width * 0.014,
              ),
              Globaltext(
                text: Apptext.logoname,
                color: Colors.white,
                fontsize: 24,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
