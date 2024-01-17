import 'package:bigmart/View/Auth/createaccountscreen.dart';
import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globalbutton.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:bigmart/utils/common/textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Globaltext(
              text: Apptext.signintitle,
              fontfamily: GoogleFonts.inter().toString(),
              fontsize: 20,
            ),
            SizedBox(
              height: height * 0.011,
            ),
            Globaltext(
              text: Apptext.signinsubtitle,
              fontweight: FontWeight.w400,
              fontfamily: GoogleFonts.inter().toString(),
            ),
            SizedBox(
              height: height * 0.035,
            ),
            const TextFieldWidget(text: 'Email'),
            SizedBox(
              height: height * 0.029,
            ),
            const TextFieldWidget(
              text: 'Password',
              icon: Icon(Icons.visibility_off_outlined),
            ),
            SizedBox(
              height: height * 0.011,
            ),
            Row(
              children: [
                const Spacer(),
                Globaltext(
                  text: 'Forgot Password?',
                  textStyle: TextStyle(
                      fontSize: 12,
                      fontFamily: GoogleFonts.inter().toString(),
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff5041FC),
                      decoration: TextDecoration.underline,
                      decorationColor: const Color(0xff5041FC),
                      decorationThickness: 2),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.036,
            ),
            GlobalButton(
              height: height * 0.054,
              width: double.infinity,
              voidcallback: () {},
              text: 'Sign in',
              fontweight: FontWeight.w500,
              fontsize: 18,
            ),
            SizedBox(
              height: height * 0.050,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 0.50,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: width * 0.010,
                ),
                Globaltext(
                  text: Apptext.sign,
                  fontsize: 12,
                  fontweight: FontWeight.w400,
                  fontfamily: GoogleFonts.inter().toString(),
                  color: Color(0x8C000000),
                ),
                SizedBox(
                  width: width * 0.010,
                ),
                Expanded(
                  child: Container(
                    height: 0.50,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.050,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColor.textfieldcolor),
                  ),
                  child: Image.asset(
                    Appimage.Applelogo,
                    scale: 3,
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColor.textfieldcolor),
                  ),
                  child: Image.asset(
                    Appimage.googlelogo,
                    scale: 3,
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColor.textfieldcolor),
                  ),
                  child: Image.asset(
                    Appimage.facebooklogo,
                    scale: 3,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.036,
            ),
            RichText(
              text: TextSpan(
                text: Apptext.Signintext,
                style: const TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreateAccountScreen(),
                          ),
                        );
                      },
                    text: Apptext.Signintext2,
                    style: const TextStyle(
                        color: Color(0xff5041FC),
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
