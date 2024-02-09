import 'package:bigmart/View/bottomnavigationbar.dart';
import 'package:bigmart/utils/common/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/common/globaltext.dart';

class OrderSoon extends StatefulWidget {
  const OrderSoon({super.key});

  @override
  State<OrderSoon> createState() => _OrderSoonState();
}

class _OrderSoonState extends State<OrderSoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/yes (2) 1.png',scale: 4,),
            SizedBox(
              height: 23.h,
            ),
            Globaltext(
                text: 'Your Order Is recived',
                fontsize: 20,
                fontweight: FontWeight.w600,
                fontfamily: GoogleFonts.inter().toString(),
               ),
            Globaltext(
                text: 'Delivery Soon',
                fontsize: 20,
                fontweight: FontWeight.w600,
                fontfamily: GoogleFonts.inter().toString(),
            ),
            SizedBox(
              height: 33.h,
            ),
            InkWell(
              onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                  builder: (context) => BotttomNavigationbarScreen(),), (
                    route) => false);
              },
              child: Container(
                height: 48.h,
                width: 186.w,
                decoration: BoxDecoration(
                  color: AppColor.headcolor,
                  borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                child: Center(
                  child: Globaltext(
                    text: 'My Account',
                    fontsize: 20,
                    fontweight: FontWeight.w700,
                    fontfamily: GoogleFonts.inter().toString(),
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],

        ),
      ),
    );
  }
}
