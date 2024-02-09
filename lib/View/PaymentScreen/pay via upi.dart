
import 'package:bigmart/View/ordersoon.dart';
import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globalbutton.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Payviaupi extends StatefulWidget {
  const Payviaupi({super.key});

  @override
  State<Payviaupi> createState() => _PayviaupiState();
}

class Upi {
  String image;
  String text;

  Upi({
    required this.image,
    required this.text
  });
}

List<Upi> Upidata = [
  Upi(
      image: 'assets/images/image-removebg-preview - 2023-12-21T191616 1.png', text: 'mrmohan7854@okaxis',
      ),
  Upi(
      image: 'assets/images/image-removebg-preview - 2023-12-21T191816 1.png', text: 'namebank@okpay',
      ),
  Upi(
    image: 'assets/images/image-removebg-preview - 2023-12-21T191719 1.png', text: 'mrsiva4785@okaxis',

  ),
  Upi(
    image: 'assets/images/image-removebg-preview - 2023-12-21T191855 1.png', text: 'namebank@okpay',

  )
];

class _PayviaupiState extends State<Payviaupi> {


  int selectedindex = 1;
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
              text: Apptext.payviaupistitle,
              fontsize: 24,
              fontfamily: GoogleFonts.inter().toString(),
              fontweight: FontWeight.w500,
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: Upidata.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 14.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 22.0),
                        height: 96.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          border: Border.all(color: AppColor.textfieldcolor),
                        ),
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
                                          Upidata[index].image
                                        ),
                                        scale: 3),
                                  ),
                                ),
                                Globaltext(
                                  text: Upidata[index].text,
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
                                    value: 0,
                                    groupValue: index,
                                    onChanged: (value) {
                                      setState(() {
                                        index = value!;
                                        print(value);
                                        print(index);
                                      });
                                    }),
                                Icon(Icons.arrow_forward_outlined,size: 18,)
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
