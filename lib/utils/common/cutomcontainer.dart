import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final subtext;
  final double? fontsize;
  final Color? color;

  const CustomContainer({
    super.key,
    required this.text,
    this.subtext,
    this.fontsize, this.color,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.105,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColor.gradient1, AppColor.gradient2],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    height: height * 0.105,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Globaltext(
                                  text: text,
                                  fontfamily: GoogleFonts.inter().toString(),
                                  fontsize: fontsize ?? 20,
                                  color: Colors.white,
                                ),
                                Globaltext(
                                  text: subtext ?? "",
                                  color: color ?? Colors.white,
                                  fontsize: 10,
                                  fontfamily: GoogleFonts.inter().toString(),

                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: height * 0.100,
                        width: width * 0.100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.homecontainercolor,
                        ),
                        child: const Icon(
                          Icons.shopping_cart_outlined,
                          // size: 25,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.012,
                      ),
                      Container(
                        height: height * 0.10,
                        width: width * 0.100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.homecontainercolor,
                        ),
                        child: const Icon(
                          Icons.menu,
                          // size: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
