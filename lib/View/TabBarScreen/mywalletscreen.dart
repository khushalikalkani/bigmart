import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWalletScreen extends StatefulWidget {
  const MyWalletScreen({super.key});

  @override
  State<MyWalletScreen> createState() => _MyWalletScreenState();
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

class _MyWalletScreenState extends State<MyWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Globaltext(
              text: Apptext.mywallettitle,
              fontsize: 24,
              fontfamily: GoogleFonts.inter().toString(),
              fontweight: FontWeight.w500,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: BalanceData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 14.0),
                    child: Container(
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
                          Expanded(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 18.w,
                                ),
                                Image.asset(
                                  BalanceData[index].image,
                                  scale: 3,
                                  color: BalanceData[index].iconcolor,
                                ),
                                SizedBox(
                                  width: 16.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Globaltext(
                                      text: BalanceData[index].transactiontitle,
                                      fontweight: FontWeight.w600,
                                      fontfamily: GoogleFonts.inter().toString(),
                                      fontsize: 16,
                                      color: BalanceData[index].color,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      children: [
                                        Globaltext(
                                          text: BalanceData[index].transactionid,
                                          fontsize: 14,
                                          fontfamily:
                                              GoogleFonts.inter().toString(),
                                          fontweight: FontWeight.w400,
                                          color: AppColor.blackcolor,
                                        ),
                                        SizedBox(
                                          width: 3.h,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Globaltext(
                                      text: BalanceData[index].datentime,
                                      fontsize: 12,
                                      fontfamily: GoogleFonts.inter().toString(),
                                      fontweight: FontWeight.w400,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Globaltext(
                                text: "₹ ${BalanceData[index].price}",
                                fontfamily: GoogleFonts.inter().toString(),
                                fontweight: FontWeight.w500,
                                fontsize: 14,
                                color: BalanceData[index].iconcolor,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 27.w,
                          ),
                        ],
                      ),
                    ),
                  );

                }),
          ],
        ),
      ),
    );
  }
}
