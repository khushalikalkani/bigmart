import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.210,
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
                  SizedBox(
                    height: height * 0.032,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.access_time_outlined,
                        color: Colors.white,
                      ),
                      // SizedBox(
                      //   width: width * 0.011,
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Globaltext(
                            text: Apptext.containertext1,
                            fontsize: 12,
                            fontfamily: GoogleFonts.inter().toString(),
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: width * 0.455,
                            child: Globaltext(
                              text: Apptext.containertext2,
                              textStyle: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
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
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16.0),
                      suffixIcon: const Icon(Icons.search),
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      filled: true,
                      hintText: Apptext.hinttext,
                      hintStyle: TextStyle(
                          color: AppColor.homecontainercolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          fontFamily: GoogleFonts.inter().toString()),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: AppColor.textfieldcolor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: AppColor.textfieldcolor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(

              children: [
                SizedBox(
                  height: height * 0.016,
                ),
                Row(
                  children: [
                    Globaltext(
                      text: Apptext.hometitle,
                      fontfamily: GoogleFonts.inter().toString(),
                      fontsize: 16,
                    ),
                    const Spacer(),
                    Text(
                      "View all",
                      style: TextStyle(
                          fontFamily: GoogleFonts.inter().toString(),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColor.veiwallcolor),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 430,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisSpacing: 22,
                              crossAxisSpacing: 12,
                              mainAxisExtent: 120),
                      itemCount: Appimage.gridviewimage.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              border: Border.all(
                                color: AppColor.gridveiwcolor,
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: height * 0.007,
                              ),
                              Image.asset(
                                Appimage.gridviewimage[index],
                                scale: 2.5,
                              ),
                              Spacer(),
                              Text(Apptext.gridviewname[index]),
                              SizedBox(
                                height: height * 0.011,
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: height * 0.035,
                ),
                Container(
                  height: height * 0.130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.homebtmcontainercolor,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.024,
                            ),
                            RichText(
                              text: TextSpan(
                                text: Apptext.btmtext1,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                                children: [
                                  TextSpan(
                                    text: Apptext.btmtext2,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                            Globaltext(
                              text: Apptext.btmtext3,
                              fontfamily: GoogleFonts.inter().toString(),
                              fontweight: FontWeight.w400,
                              fontsize: 12,
                            ),
                            SizedBox(
                              height: height * 0.012,
                            ),
                            Container(
                              height: height * 0.040,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      AppColor.primarycolor),
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(16),
                                      ),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: Globaltext(
                                  text: Apptext.btmbtntext,
                                  fontsize: 12,
                                  fontweight: FontWeight.w600,
                                  fontfamily: GoogleFonts.inter().toString(),
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        Appimage.homebtmcontainerimage,
                        scale: 4,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
