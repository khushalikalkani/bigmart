import 'package:bigmart/View/TabBarScreen/myorderscreen.dart';
import 'package:bigmart/View/deliverpage.dart';
import 'package:bigmart/View/ordersoon.dart';
import 'package:bigmart/utils/common/globalbutton.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/common/appcolor.dart';
import '../../utils/common/apptext.dart';
import '../TabBarScreen/mywalletscreen.dart';

class Cardscreen extends StatefulWidget {
  const Cardscreen({super.key});

  @override
  State<Cardscreen> createState() => _CardscreenState();
}

class Balance {
  String image;
  String transactiontitle;
  String transactionid;
  String datentime;
  String price;
  Color color;
  Color? containercolor;
  Color? iconcolor;

  Balance({
    required this.image,
    required this.transactiontitle,
    required this.transactionid,
    required this.datentime,
    required this.price,
    required this.color,
    required this.containercolor,
    this.iconcolor,
  });
}

List<Balance> BalanceData = [
  Balance(
      image: 'assets/images/add 2.png',
      transactiontitle: 'Cashback',
      transactionid: "Transaction ID: 50916228",
      datentime: 'On 23 Oct 18, 03:13 PM',
      price: '500',
      color: AppColor.headcolor,
      containercolor: AppColor.tabbarContainercolor,
      iconcolor: AppColor.headcolor),
  Balance(
      image: 'assets/images/minus 1.png',
      transactiontitle: 'Purchase',
      transactionid: "Transaction ID: 50916984",
      datentime: 'On 23 Oct 18, 03:13 PM',
      price: '300',
      color: Color(0xff5041FC),
      containercolor: AppColor.tabbarContainercolor,
      iconcolor: Colors.red),
  Balance(
    image: 'assets/images/add 2.png',
    transactiontitle: 'Cashback',
    transactionid: "Transaction ID: 509165488",
    datentime: 'On 13 Oct 16, 01:43 PM',
    price: '800',
    color: AppColor.headcolor,
    containercolor: Color(0x42a010a3),
    iconcolor: AppColor.headcolor,
  )
];

class _CardscreenState extends State<Cardscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 19.h,
            ),
            Globaltext(
              text: Apptext.cardstitle,
              fontsize: 24,
              fontfamily: GoogleFonts.inter().toString(),
              fontweight: FontWeight.w500,
            ),
            SizedBox(
              height: 26.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30.h,
                  width: 72.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      border: Border.all(color: AppColor.textfieldcolor),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/image-removebg-preview - 2023-12-21T192242 1.png',
                        ),
                        scale: 2,
                      )),
                ),
                Container(
                  height: 30.h,
                  width: 72.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: AppColor.textfieldcolor),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/image-removebg-preview - 2023-12-21T191719 1.png',
                        ),
                        scale: 2,
                      )),
                ),
                Container(
                  height: 30.h,
                  width: 72.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: AppColor.textfieldcolor),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/image-removebg-preview - 2023-12-21T191855 1.png',
                        ),
                        scale: 2,
                      )),
                ),
                Container(
                  height: 30.h,
                  width: 72.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: AppColor.textfieldcolor),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/image-removebg-preview - 2023-12-21T192015 1.png',
                        ),
                        scale: 2,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 28.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              height: 66.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(color: AppColor.textfieldcolor),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Globaltext(
                    text: 'Name on Card',
                    fontsize: 12,
                    fontweight: FontWeight.w400,
                    fontfamily: GoogleFonts.inter().toString(),
                  ),
                  Globaltext(
                    text: 'Master Card',
                    fontsize: 18,
                    fontweight: FontWeight.w400,
                    fontfamily: GoogleFonts.inter().toString(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              height: 66.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(color: AppColor.textfieldcolor),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Globaltext(
                    text: 'Card Number',
                    fontsize: 12,
                    fontweight: FontWeight.w400,
                    fontfamily: GoogleFonts.inter().toString(),
                  ),
                  Globaltext(
                    text: '34582685458',
                    fontsize: 18,
                    fontweight: FontWeight.w400,
                    fontfamily: GoogleFonts.inter().toString(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 66.h,
                    //width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(color: AppColor.textfieldcolor),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Globaltext(
                          text: 'Card Number',
                          fontsize: 12,
                          fontweight: FontWeight.w400,
                          fontfamily: GoogleFonts.inter().toString(),
                        ),
                        Globaltext(
                          text: 'dd-mm-yyyy',
                          fontsize: 18,
                          fontweight: FontWeight.w400,
                          fontfamily: GoogleFonts.inter().toString(),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  height: 66.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(color: AppColor.textfieldcolor),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Globaltext(
                        text: 'cvv',
                        fontsize: 12,
                        fontweight: FontWeight.w400,
                        fontfamily: GoogleFonts.inter().toString(),
                      ),
                      Globaltext(
                        text: '6548',
                        fontsize: 18,
                        fontweight: FontWeight.w400,
                        fontfamily: GoogleFonts.inter().toString(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 13.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              height: 66.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(color: AppColor.textfieldcolor),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Globaltext(
                    text: 'Nickname for Card',
                    fontsize: 12,
                    fontweight: FontWeight.w400,
                    fontfamily: GoogleFonts.inter().toString(),
                  ),
                  Globaltext(
                    text: 'Mohan',
                    fontsize: 18,
                    fontweight: FontWeight.w400,
                    fontfamily: GoogleFonts.inter().toString(),
                  ),
                ],
              ),
            ),
            Spacer(),
            GlobalButton(
              height: 48.h,
              width: double.infinity,
              voidcallback: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                  builder: (context) => OrderSoon(),), (
                    route) => false);
              },
              text: 'Pay Now',fontweight: FontWeight.w600,
              fontsize: 20,),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
