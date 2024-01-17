import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommanSplashScreen extends StatelessWidget {
  final String headtext, subtext, imageview;

  const CommanSplashScreen(
      {super.key,
      required this.headtext,
      required this.subtext,
      required this.imageview});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: Globaltext(
              text: headtext,
              color: AppColor.headcolor,
              fontsize: 20,
              fontfamily: GoogleFonts.inter().toString(),
            ),
          ),
          SizedBox(
            height: height * 0.014,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90.0),
            child: Globaltext(
              text: subtext,
              fontweight: FontWeight.w400,
              fontfamily: 'inter',
            ),
          ),
          SizedBox(
            height: height * 0.050,
          ),
          Image.asset(
            imageview,
            height: 288,
          ),
        ],
      ),
    );
  }
}
