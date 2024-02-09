import 'package:bigmart/View/TabBarScreen/mywalletscreen.dart';
import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globalbutton.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ordersoon.dart';

class Wallets extends StatefulWidget {
  const Wallets({super.key});

  @override
  State<Wallets> createState() => _WalletsState();
}

class Walletname {
  String image;
  String transactiontitle;
  String transactionsubtitle;

  Walletname(
      {required this.image,
      required this.transactiontitle,
      required this.transactionsubtitle});
}

List<Walletname> walletData = [
  Walletname(
      transactiontitle: 'Paytm',
      transactionsubtitle: 'LINK',
      image: 'assets/images/image-removebg-preview - 2023-12-21T191616 1.png'),
  Walletname(
    transactiontitle: 'MobikWik',
    transactionsubtitle: 'LINK',
    image: 'assets/images/image-removebg-preview - 2023-12-21T191816 1.png',
  ),
  Walletname(
    transactiontitle: 'Paytm',
    transactionsubtitle: 'LINK',
    image: 'assets/images/image-removebg-preview - 2023-12-21T191719 1.png',
  ),
  Walletname(
    transactiontitle: 'MobikWik',
    transactionsubtitle: 'LINK',
    image: 'assets/images/image-removebg-preview - 2023-12-21T191855 1.png',
  ),
  Walletname(
    transactiontitle: 'MobikWik',
    transactionsubtitle: 'LINK',
    image: 'assets/images/image-removebg-preview - 2023-12-21T192242 1.png',
  ),
  Walletname(
    transactiontitle: 'Paytm',
    transactionsubtitle: 'LINK',
    image: 'assets/images/image-removebg-preview - 2023-12-21T192015 1.png',
  )
];

class _WalletsState extends State<Wallets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 22.h,
            ),
            Globaltext(
              text: Apptext.walletstitle,
              fontsize: 24,
              fontfamily: GoogleFonts.inter().toString(),
              fontweight: FontWeight.w500,
            ),
            GridView.builder(
                shrinkWrap: true,
                itemCount: walletData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 22,
                  crossAxisSpacing: 11,
                  mainAxisExtent: 154,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 104.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(color: AppColor.textfieldcolor),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 12.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 36.h,
                              width: 36.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: AppColor.textfieldcolor),
                                image: DecorationImage(
                                    image: AssetImage(
                                      walletData[index].image,
                                    ),
                                    scale: 3),
                              ),
                            ),
                            Globaltext(
                              text: walletData[index].transactiontitle,
                              fontsize: 14,
                              fontweight: FontWeight.w400,
                              fontfamily: GoogleFonts.inter().toString(),
                            ),
                            Globaltext(
                              text: walletData[index].transactionsubtitle,
                              fontsize: 14,
                              fontweight: FontWeight.w400,
                              fontfamily: GoogleFonts.inter().toString(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
            Spacer(),
            GlobalButton(
              height: 48.h,
              width: double.infinity,
              voidcallback: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                  builder: (context) => OrderSoon(),), (
                    route) => false);
              },
              text: 'Pay Now',
              fontweight: FontWeight.w600,
              fontsize: 20,
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
