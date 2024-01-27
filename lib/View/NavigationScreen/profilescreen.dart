import 'package:bigmart/View/TabBarScreen/adressscreen.dart';
import 'package:bigmart/View/TabBarScreen/logout.dart';
import 'package:bigmart/View/TabBarScreen/myorderscreen.dart';
import 'package:bigmart/View/TabBarScreen/mywalletscreen.dart';
import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/cutomcontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  int selectedindex = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  static List WidgetOption = [
    AddressScreen(),
    MyOrderScreen(),
    MyWalletScreen(),
    LogOutScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200.h,
          child: DefaultTabController(
            length: 4,
            child: Scaffold(
              body: Column(
                children: [
                  CustomContainer(text: "Profile"),
                  Container(
                    height: 100.h,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TabBar(
                        padding: EdgeInsets.zero,

                        indicatorColor: Colors.transparent,
                        controller: _tabController,
                        labelColor: AppColor.primarycolor,
                        unselectedLabelColor: AppColor.blackcolor,
                        labelStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: GoogleFonts.inter().toString()),
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
                                  'assets/images/address (1) 1.png',
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
                                'Address',
                                style: TextStyle(
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
                                  'assets/images/menu (10) 2.png',
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
                                'My Order',
                                style: TextStyle(
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
                                  'assets/images/wallet (2) 2.png',
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
                                'My Wallet',
                                style: TextStyle(
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
                                  'assets/images/logout (4) 1.png',
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
                                'Logout',
                                style: TextStyle(
                                    color: selectedindex == 3
                                        ? AppColor.primarycolor
                                        : Colors.black),
                              )
                            ],
                          ),
                        ],
                        onTap: _onItemTapped,
                        mouseCursor: MouseCursor.uncontrolled,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: TabBarView(
              controller: _tabController, children: [
            AddressScreen(),
            MyOrderScreen(),
            MyWalletScreen(),
            LogOutScreen(),
          ]),
        )
      ],
    );
  }
}
