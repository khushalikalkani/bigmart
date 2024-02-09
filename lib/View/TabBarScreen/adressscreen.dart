import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Globaltext(
                  text: Apptext.tabaddresstitle,
                  fontsize: 24,
                  fontfamily: GoogleFonts.inter().toString(),
                  fontweight: FontWeight.w500,
                ),
                Spacer(),
                Container(
                  height: 32.h,
                  width: 100.w,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(AppColor.primarycolor)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 16.h,
                          width: 16.w,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Icon(
                            Icons.add,
                            color: AppColor.primarycolor,
                            size: 18,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Globaltext(
                          text: 'Add New',
                          color: Colors.white,
                          fontweight: FontWeight.w500,
                          fontfamily: GoogleFonts.inter().toString(),
                          fontsize: 15,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 39.h,
            ),
            const AddressContainer(
              image: 'assets/images/homepage (5) 1.png',
              text: 'Home',
              text2: 'H.No. 2834 Street, 784 Sector sector',
            ),
            SizedBox(
              height: 14.h,
            ),
            AddressContainer(
              image: Appimage.location,
              text: 'Chennai',
              text2: '658475 Street, 784 Sector, Chenn...',
            ),
            SizedBox(
              height: 14.h,
            ),
            AddressContainer(
              image: Appimage.officebag,
              text: 'Office',
              text2: '36547, 784 Sector, Chennai. Ad...',
            ),
            SizedBox(
              height: 14.h,
            ),
          ],
        ),
      ),
    );
  }
}

class AddressContainer extends StatelessWidget {
  const AddressContainer(
      {super.key,
      required this.image,
      required this.text,
      required this.text2});

  final String image, text, text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71.h,
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
                  image,
                  scale: 2,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Globaltext(
                      text: text,
                      fontsize: 14,
                      fontfamily: GoogleFonts.inter().toString(),
                      fontweight: FontWeight.w600,
                    ),
                    Globaltext(
                      text: text2,
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
              Image.asset(
                Appimage.edit,
                scale: 2,
              ),
              SizedBox(
                height: 6.h,
              ),
              Globaltext(
                text: 'Edit',
                color: AppColor.headcolor,
                fontsize: 14,
                fontfamily: GoogleFonts.inter().toString(),
                fontweight: FontWeight.w500,
              )
            ],
          ),
          SizedBox(
            width: 27.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Appimage.delete,
                scale: 2,
              ),
              SizedBox(
                height: 6.h,
              ),
              Globaltext(
                text: 'Delete',
                color: AppColor.blackcolor,
                fontsize: 14,
                fontfamily: GoogleFonts.inter().toString(),
                fontweight: FontWeight.w500,
              ),

            ],
          ),
          SizedBox(
            width: 6.w,
          ),
        ],
      ),
    );
  }
}
