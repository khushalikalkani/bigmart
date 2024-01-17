import 'package:bigmart/View/Auth/varification.dart';
import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globalbutton.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:bigmart/utils/common/textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
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
            SizedBox(
              height: height * 0.020,
            ),
            Globaltext(
              text: Apptext.createAcctitle,
              fontfamily: GoogleFonts.inter().toString(),
              fontsize: 20,
            ),
            SizedBox(
              height: height * 0.011,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Globaltext(
                text: Apptext.createAccsubtitle,
                fontweight: FontWeight.w400,
                fontfamily: GoogleFonts.inter().toString(),
              ),
            ),
            SizedBox(
              height: height * 0.032,
            ),
            TextFieldWidget(text: 'Name'),
            SizedBox(
              height: height * 0.010,
            ),
            const TextFieldWidget(text: 'Email'),
            SizedBox(
              height: height * 0.010,
            ),
            const TextFieldWidget(
              text: 'Password',
            ),
            SizedBox(
              height: height * 0.017,
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.textfieldcolor)),
                ),
                SizedBox(
                  width: width * 0.014,
                ),
                Globaltext(
                  text: Apptext.checkboxtext,
                  fontfamily: GoogleFonts.inter().toString(),
                  fontweight: FontWeight.w400,
                )
              ],
            ),
            SizedBox(
              height: height * 0.025,
            ),
            GlobalButton(
              height: height * 0.054,
              width: double.infinity,
              voidcallback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateAccountScreen(),
                  ),
                );
              },
              text: 'Sign Up',
              fontweight: FontWeight.w500,
              fontsize: 18,
            ),
            SizedBox(
              height: height * 0.031,
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
              height: height * 0.031,
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
              height: height * 0.042,
            ),
            RichText(
              text: TextSpan(
                text: Apptext.Signintext,
                style: const TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VarificationScreen(),
                          ),
                        );
                      },
                    text: Apptext.createAcctext2,
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
