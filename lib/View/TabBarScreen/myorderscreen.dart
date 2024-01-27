import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/common/appcolor.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: Column(
        children: [
          Row(
            children: [
              Globaltext(
                text: Apptext.tabOrdertitle,
                fontsize: 24,
                fontfamily: GoogleFonts.inter().toString(),
                fontweight: FontWeight.w500,
              ),
            ],
          ),
          Container(
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
                        width: 20.w,
                      ),
                      Image.asset(
                        "assets/images/shopping-bag (1) 1.png",
                        scale: 2,
                        color: AppColor.headcolor,
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 17.h,
                            width: 62.w,
                            decoration: BoxDecoration(
                              color: AppColor.tabbarContainercolor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: Globaltext(
                                text: 'Delivered',
                                fontweight: FontWeight.w600,
                                fontfamily: GoogleFonts.inter().toString(),
                                fontsize: 10,
                                color: AppColor.headcolor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Globaltext(
                                text: "0RD0432547891",
                                fontsize: 14,
                                fontfamily: GoogleFonts.inter().toString(),
                                fontweight: FontWeight.w600,
                                color: AppColor.blackcolor,
                              ),
                              Container(
                                height: 4.h,
                                width: 4.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Globaltext(
                            text: "Placed on wed, 19 Oct 30, 12:55 pm",
                            fontsize: 10,
                            fontfamily: GoogleFonts.inter().toString(),
                            fontweight: FontWeight.w300,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.visibility_outlined,
                      size: 20,
                      color: AppColor.headcolor,
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Globaltext(
                      text: 'View Details',
                      color: AppColor.headcolor,
                      fontsize: 8,
                      fontfamily: GoogleFonts.inter().toString(),
                      fontweight: FontWeight.w500,
                    )
                  ],
                ),
                SizedBox(
                  width: 10.w,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
