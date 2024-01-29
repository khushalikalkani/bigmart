import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/cutomcontainer.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class storeName {
  String image;
  String name;
  String subname;
  String delivery;
  String available;
  String away;

  storeName(
      {required this.name,
      required this.subname,
      required this.delivery,
      required this.image,
      required this.available,
        required this.away});
}

List<storeName> storedata = [
  storeName(
    name: "E- Grocery Super Market",
    subname: 'Organic',
    delivery: "Delivery",
    image: 'assets/images/image-removebg-preview (92) 1.png',
    available: 'Pickup available', away: "7.5 mi away",
  ),
  storeName(
    name: "DealShare Mart",
    subname: 'Alcohol',
    delivery: "Delivery",
    image: 'assets/images/image-removebg-preview (93) 1.png',
    available: 'Pickup available',
      away: "7.5 mi away"
  ),
  storeName(
    name: "D-Mart",
    subname: 'Groceries',
    delivery: 'Delivery by 10:30pm',
    image: 'assets/images/image-removebg-preview (94) 1.png',
    available: 'Pickup available',
      away: "7.5 mi away"
  ),
];

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomContainer(
            text: Apptext.storetext,
            subtext: Apptext.storetext2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 35.h,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: storedata.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom:22.0),
                          child: Container(
                            height: 170.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                border: Border.all(color: AppColor.textfieldcolor)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 16.w,
                                    ),
                                    Image.asset(
                                      storedata[index].image,
                                      scale: 2,
                                    ),
                                    SizedBox(
                                      width: 21.w,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 18.h,
                                        ),
                                        Globaltext(
                                          text: storedata[index].name,
                                          fontsize: 16,
                                          fontfamily:
                                              GoogleFonts.inter().toString(),
                                        ),
                                        SizedBox(
                                          height: 13.h,
                                        ),
                                        Globaltext(
                                          text: storedata[index].subname,
                                          fontsize: 10,
                                          fontfamily:
                                              GoogleFonts.inter().toString(),
                                          color: AppColor.storesubnamecolor,
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Globaltext(
                                          text: storedata[index].delivery,
                                          fontsize: 10,
                                          fontfamily:
                                              GoogleFonts.inter().toString(),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Globaltext(
                                          text: storedata[index].available,
                                          fontsize: 10,
                                          fontfamily:
                                              GoogleFonts.inter().toString(),
                                        ),
                                        SizedBox(
                                          height: 12.h,
                                        ),
                                        Container(
                                          height: 27.h,
                                          width: 75.h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(10),),
                                            border: Border.all(color: AppColor.textfieldcolor)
                                          ),
                                          child: Center(
                                            child: Globaltext(text: storedata[index].away,
                                            fontsize: 10,
                                            fontfamily: GoogleFonts.inter().toString(),
                                            color: AppColor.storecardtextcolor,),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );

                      }),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
