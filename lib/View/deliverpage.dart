import 'package:bigmart/View/bottomnavigationbar.dart';
import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliverScreen extends StatefulWidget {
  const DeliverScreen({super.key});

  @override
  State<DeliverScreen> createState() => _DeliverScreenState();
}

class _DeliverScreenState extends State<DeliverScreen> {
  List<String> Department = [
    'Home',
    'Shop',
    'Stores',
    'Mega Menu',
    'Pages',
    'Acount'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  Image.asset(
                    Appimage.logo,
                    scale: 4,
                  ),
                  SizedBox(
                    width: 9.w,
                  ),
                  Globaltext(
                    text: Apptext.logoname,
                    fontweight: FontWeight.w500,
                    fontsize: 14,
                    color: AppColor.headcolor,
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                        builder: (context) => BotttomNavigationbarScreen(),), (
                          route) => false);
                    },
                    child: Icon(
                      Icons.close,
                      size: 20,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Search items',
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: 32.h,
                    width: 98.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: AppColor.headcolor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(
                    color: AppColor.textfieldcolor,
                    width: 2.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(
                    color: AppColor.textfieldcolor,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 19.h,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/pin (1) 2.png',
                  scale: 2.5,
                ),
                SizedBox(
                  width: 18.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Globaltext(
                      text: 'Delivery in 16 minutes',
                      fontsize: 12,
                      fontweight: FontWeight.w400,
                      fontfamily: GoogleFonts.inter().toString(),
                      color: Color(0xB3000000),
                    ),
                    Globaltext(
                      text: 'H.No. 2834 Street, 784 Sector, Adyar, Chennai',
                      fontsize: 12,
                      fontweight: FontWeight.w400,
                      fontfamily: GoogleFonts.inter().toString(),
                      color: Color(0xB3000000),
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 30,
                  color: Color(0x80000000),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              height: 42,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.headcolor,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 27.w,
                  ),
                  Image.asset(
                    'assets/images/category (2) 1.png',
                    scale: 3,
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  Globaltext(
                      text: 'All Departments',
                      fontsize: 16,
                      fontweight: FontWeight.w500,
                      fontfamily: GoogleFonts.inter().toString(),
                      color: Colors.white),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: Department.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                    Department[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_down),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
