import 'package:bigmart/View/bottomnavigationbar.dart';
import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globalbutton.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:google_fonts/google_fonts.dart';

class VarificationScreen extends StatefulWidget {
  const VarificationScreen({super.key});

  @override
  State<VarificationScreen> createState() => _VarificationScreenState();
}

class _VarificationScreenState extends State<VarificationScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Globaltext(
              text: Apptext.verifytitle,
              fontfamily: GoogleFonts.inter().toString(),
              fontsize: 20,
            ),
            SizedBox(
              height: height * 0.024,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: Apptext.verifysubtitle,
                  style: TextStyle(
                    color: AppColor.verifysubtitlecolor,
                  ),
                  children: [
                    TextSpan(
                      text: Apptext.verifysubtitle2,
                      style: TextStyle(
                          color: AppColor.primarycolor,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.032,
            ),
            OTPTextField(
              outlineBorderRadius: 10,
              length: 5,
              otpFieldStyle: OtpFieldStyle(
                backgroundColor: AppColor.varifycolor,
                focusBorderColor: AppColor.varifycolor,
                enabledBorderColor: AppColor.varifycolor,
              ),
              width: MediaQuery.of(context).size.width,
              fieldWidth: 55,
              style: const TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            SizedBox(
              height: height * 0.016,
            ),
            Globaltext(
              text: 'Didn’t receive OTP?',
              fontfamily: GoogleFonts.inter().toString(),
              fontweight: FontWeight.w400,
              color: AppColor.verifysubtitlecolor,
            ),
            Globaltext(
              text: 'Resend code',
              fontfamily: GoogleFonts.inter().toString(),
              fontweight: FontWeight.w500,
            ),
            Container(
              height: 0.9,
              color: Colors.black,
              width: 85,
            ),
            SizedBox(
              height: height * 0.042,
            ),
            GlobalButton(
              height: height * 0.050,
              width: double.infinity,
              voidcallback: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (_) => BotttomNavigationbarScreen()),
                    (route) => false);
              },
              text: 'Verify',
              fontweight: FontWeight.w500,
              fontfamily: GoogleFonts.inter().toString(),
              fontsize: 18,
            )
          ],
        ),
      ),
    );
  }
}
