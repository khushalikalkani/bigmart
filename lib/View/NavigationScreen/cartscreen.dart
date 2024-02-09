import 'package:bigmart/View/TabBarScreen/logout.dart';
import 'package:bigmart/View/Tabbarscreen2.dart';
import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/cutomcontainer.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class CartName {
  String image;
  String name;
  String subname;
  double price;

  CartName(
      {required this.name,
      required this.subname,
      required this.image,
      required this.price});
}

List<CartName> cartdata = [
  CartName(
    name: "Chocolate",
    subname: 'Bittersweet Chocolate',
    image: 'assets/images/image-removebg-preview (84) 1.png',
    price: 120,
  ),
  CartName(
    name: "Egg",
    subname: 'Egg box',
    image: 'assets/images/image-removebg-preview (85) 1.png',
    price: 80,
  ),
  CartName(
    name: "Butter",
    subname: 'Vegetable oil butter',
    image: 'assets/images/image-removebg-preview (86) 1.png',
    price: 120,
  ),
  CartName(
    name: "Drinks",
    subname: 'Kanguru energy drink',
    image: 'assets/images/image-removebg-preview (91) 2.png',
    price: 80,
  ),
  CartName(
    name: "Kraft",
    subname: 'Thousand island drink drink drink',
    image: 'assets/images/image-removebg-preview (87) 2.png',
    price: 80,
  ),
];

class _CartScreenState extends State<CartScreen> {
  int selectedindex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomContainer(
            text: Apptext.carttext,
            subtext: Apptext.cartsubtext,
            fontsize: 14,
            color: AppColor.cartsubnamecolor,
          ),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: cartdata.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 100.h,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 90.w,
                                  child: Image.asset(
                                    cartdata[index].image,
                                    scale: 3,
                                  ),
                                ),
                                SizedBox(
                                  width: 9.w,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Globaltext(
                                        textStyle: const TextStyle(
                                            overflow: TextOverflow.ellipsis),
                                        text: cartdata[index].name,
                                        fontfamily:
                                            GoogleFonts.inter().toString(),
                                        fontweight: FontWeight.w400,
                                        color: AppColor.cartcardtextcolor,
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      Globaltext(
                                        text: cartdata[index].subname,
                                        textStyle: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            fontWeight: FontWeight.w500,
                                            color: AppColor.blackcolor),
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Globaltext(
                                        text:
                                            "₹ ${cartdata[index].price.toStringAsFixed(0)}",
                                        fontfamily:
                                            GoogleFonts.inter().toString(),
                                        fontweight: FontWeight.w500,
                                        color: AppColor.blackcolor,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 24.h,
                              width: 24.w,
                              decoration: BoxDecoration(
                                  color: AppColor.cartcontainercolor,
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.remove,
                                size: 15,
                                color: AppColor.primarycolor,
                              ),
                            ),
                            SizedBox(
                              width: 9.w,
                            ),
                            Globaltext(text: selectedindex.toString()),
                            SizedBox(
                              width: 9.w,
                            ),
                            Container(
                              height: 24.h,
                              width: 24.w,
                              decoration: BoxDecoration(
                                  color: AppColor.cartcontainercolor,
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.add,
                                size: 15,
                                color: AppColor.primarycolor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Divider()
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: SizedBox(
              height: 48.h,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(AppColor.primarycolor),
                  shape: const MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return TabBarScreen2();
                      },
                    ),
                  );
                },
                child: const Text(
                  "3 items  ₹ 750      Proceed To Pay >>",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
