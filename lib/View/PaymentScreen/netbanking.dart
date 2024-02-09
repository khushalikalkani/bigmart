import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/common/appcolor.dart';
import '../../utils/common/apptext.dart';
import '../../utils/common/globalbutton.dart';
import '../ordersoon.dart';

class Netbanking extends StatefulWidget {
  const Netbanking({super.key});

  @override
  State<Netbanking> createState() => _NetbankingState();
}

class Walletname {
  String image;
  String transactiontitle;

  Walletname({
    required this.image,
    required this.transactiontitle,
  });
}

List<Walletname> walletData = [
  Walletname(
      transactiontitle: 'HDFC',
      image: 'assets/images/image-removebg-preview - 2023-12-21T191616 1.png'),
  Walletname(
    transactiontitle: 'ICIC',
    image: 'assets/images/image-removebg-preview - 2023-12-21T191816 1.png',
  ),
  Walletname(
    transactiontitle: 'AXIS',
    image: 'assets/images/image-removebg-preview - 2023-12-21T192015 1.png',
  ),
  Walletname(
    transactiontitle: 'SATE',
    image: 'assets/images/image-removebg-preview - 2023-12-21T192242 1.png',
  ),
  Walletname(
    transactiontitle: 'SBI',
    image: 'assets/images/image-removebg-preview - 2023-12-21T191855 1.png',
  ),
  Walletname(
    transactiontitle: 'ICIC',
    image: 'assets/images/image-removebg-preview - 2023-12-21T191719 1.png',
  ),
  Walletname(
    transactiontitle: 'SBI',
    image: 'assets/images/image-removebg-preview - 2023-12-21T192015 1.png',
  ),
  Walletname(
    transactiontitle: 'AXIS',
    image: 'assets/images/image-removebg-preview - 2023-12-21T191855 1.png',
  )
];

class _NetbankingState extends State<Netbanking> {
  int selectedindex = 0;

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
              text: Apptext.netbankingtitle,
              fontsize: 24,
              fontfamily: GoogleFonts.inter().toString(),
              fontweight: FontWeight.w500,
            ),
            SizedBox(
              height: 22.h,
            ),
            Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.symmetric(vertical: 6.0),
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 36.h,
                                  width: 36.h,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: AppColor.textfieldcolor),
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
                              ],
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Radio(
                                    value: selectedindex,
                                    groupValue: selectedindex,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedindex=value!;
                                        print(value);
                                      });
                                    }),
                                Icon(Icons.arrow_forward_outlined)
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
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
