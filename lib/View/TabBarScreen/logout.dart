import 'package:bigmart/View/PaymentScreen/cards.dart';
import 'package:bigmart/View/PaymentScreen/cash.dart';
import 'package:bigmart/View/PaymentScreen/netbanking.dart';
import 'package:bigmart/View/PaymentScreen/pay%20via%20upi.dart';
import 'package:bigmart/View/PaymentScreen/wallets.dart';
import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/cutomcontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class LogoutScreen extends StatefulWidget {
  const LogoutScreen({super.key});

  @override
  State<LogoutScreen> createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('khushi'),
    );
  }
}

