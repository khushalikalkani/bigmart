import 'package:bigmart/View/PaymentScreen/wallets.dart';
import 'package:bigmart/utils/common/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/common/cutomcontainer.dart';
import 'PaymentScreen/cards.dart';
import 'PaymentScreen/cash.dart';
import 'PaymentScreen/netbanking.dart';
import 'PaymentScreen/pay via upi.dart';

class TabBarScreen2 extends StatefulWidget {
  const TabBarScreen2({super.key});

  @override
  State<TabBarScreen2> createState() => _TabBarScreen2State();
}

class _TabBarScreen2State extends State<TabBarScreen2>
    with TickerProviderStateMixin {
  int selectedindex = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 165.h,
          color: Colors.yellow,
          child: DefaultTabController(
            length: 5,
            child: Scaffold(
              body: Column(
                children: [
                  const CustomContainer(text: 'Select Payment Method'),
                  TabBar(
                    labelPadding: const EdgeInsets.only(top: 10,bottom: 10),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    indicatorColor: Colors.transparent,
                    controller: _tabController,
                    labelColor: AppColor.primarycolor,
                    unselectedLabelColor: AppColor.blackcolor,
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: GoogleFonts.inter().toString(),
                    ),
                    tabs: [
                      Column(
                        children: [
                          Container(
                            height: 38.h,
                            width: 38.w,
                            decoration: BoxDecoration(
                              color: selectedindex == 0
                                  ? AppColor.headcolor
                                  : AppColor.tabbarContainercolor,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/wallet (2) 2.png',
                              scale: 3,
                              color: selectedindex == 0
                                  ? Colors.white
                                  : AppColor.primarycolor,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            'wallets',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: selectedindex == 0
                                    ? AppColor.primarycolor
                                    : Colors.black),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 38.h,
                            width: 38.w,
                            decoration: BoxDecoration(
                              color: selectedindex == 1
                                  ? AppColor.headcolor
                                  : AppColor.tabbarContainercolor,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/credit-cards (2) 1.png',
                              scale: 3,
                              color: selectedindex == 1
                                  ? Colors.white
                                  : AppColor.primarycolor,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            'Cards',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: selectedindex == 1
                                    ? AppColor.primarycolor
                                    : Colors.black),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 38.h,
                            width: 38.w,
                            decoration: BoxDecoration(
                              color: selectedindex == 2
                                  ? AppColor.headcolor
                                  : AppColor.tabbarContainercolor,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/Vector.png',
                              scale: 3,
                              color: selectedindex == 2
                                  ? Colors.white
                                  : AppColor.primarycolor,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            'Net Banking',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: selectedindex == 2
                                    ? AppColor.primarycolor
                                    : Colors.black),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 38.h,
                            width: 38.w,
                            decoration: BoxDecoration(
                              color: selectedindex == 3
                                  ? AppColor.headcolor
                                  : AppColor.tabbarContainercolor,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/google-glass-logo (2) 2.png',
                              scale: 3,
                              color: selectedindex == 3
                                  ? Colors.white
                                  : AppColor.primarycolor,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            'Pay via Upi ',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: selectedindex == 3
                                    ? AppColor.primarycolor
                                    : Colors.black),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 38.h,
                            width: 38.w,
                            decoration: BoxDecoration(
                              color: selectedindex == 4
                                  ? AppColor.headcolor
                                  : AppColor.tabbarContainercolor,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/money (2) 1.png',
                              scale: 3,
                              color: selectedindex == 4
                                  ? Colors.white
                                  : AppColor.primarycolor,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            'Cash',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: selectedindex == 4
                                    ? AppColor.primarycolor
                                    : Colors.black),
                          ),
                        ],
                      ),
                    ],
                    onTap: _onItemTapped,
                    mouseCursor: MouseCursor.uncontrolled,
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: TabBarView(controller: _tabController, children: const [
            Wallets(),

            Cardscreen(),
            Netbanking(),
            Payviaupi(),
            Cash(),
          ]),
        ),
      ],
    );;
  }
}
