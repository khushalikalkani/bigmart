// import 'package:bigmart/utils/common/appcolor.dart';
// import 'package:bigmart/utils/common/apptext.dart';
// import 'package:bigmart/utils/common/globaltext.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
import 'package:bigmart/View/Auth/signinscreen.dart';
import 'package:bigmart/View/Onbording/Commansplash.dart';
import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globalbutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageviewScreen extends StatefulWidget {
  const PageviewScreen({super.key});

  @override
  State<PageviewScreen> createState() => _PageviewScreenState();
}

class _PageviewScreenState extends State<PageviewScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  final _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool islastPage = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.620,
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  islastPage = index == 2;
                });
              },
              children: [
                CommanSplashScreen(
                  headtext: Apptext.headtext1,
                  subtext: Apptext.subtext1,
                  imageview: Appimage.imageview1,
                ),
                CommanSplashScreen(
                  headtext: Apptext.headtext2,
                  subtext: Apptext.subtext2,
                  imageview: Appimage.imageview2,
                ),
                CommanSplashScreen(
                  headtext: Apptext.headtext3,
                  subtext: Apptext.subtext3,
                  imageview: Appimage.imageview3,
                )
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            // axisDirection: Axis.horizontal,
            effect: ExpandingDotsEffect(
                spacing: 4.0,
                radius: 8.0,
                dotWidth: 10.0,
                dotHeight: 5,
                paintStyle: PaintingStyle.fill,
                strokeWidth: 1.5,
                dotColor: AppColor.headcolor,
                activeDotColor: AppColor.headcolor),
          ),
        ],
      ),
      bottomSheet: islastPage
          ? Padding(
              padding: EdgeInsets.only(bottom: height * 0.031),
              child: GlobalButton(
                height: 44,
                width: 80,
                voidcallback: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const SigninScreen()),
                          (route) => false);

                },
                text: 'Start',
              ),
            )
          : Container(
              height: height * 0.070,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width * 0.045,
                      ),
                      TextButton(
                        onPressed: () {
                          _controller.jumpToPage(2);
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: GoogleFonts.inter().toString(),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      const Spacer(),
                      GlobalButton(
                        height: 44,
                        width: 80,
                        voidcallback: () {
                          _controller.nextPage(
                              duration: Duration(microseconds: 500),
                              curve: Curves.easeInOut);

                        },
                        text: 'Next',
                      ),
                      SizedBox(
                        width: width * 0.031,
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
