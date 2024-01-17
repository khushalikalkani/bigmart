import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/cutomcontainer.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/common/apptext.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class Name {
  String image;
  String name;
  String subname;
  String qty;
  double price;

  Name(
      {required this.name,
      required this.subname,
      required this.qty,
      required this.image,
      required this.price});
}

List<Name> data = [
  Name(
    name: "Chocolate",
    subname: 'Bittersweet Chocolate',
    qty: "2 × 90g",
    image: 'assets/images/image-removebg-preview (84) 1.png',
    price: 120,
  ),
  Name(
    name: "Egg",
    subname: 'Egg box',
    qty: "2 × 80g",
    image: 'assets/images/image-removebg-preview (85) 1.png',
    price: 80,
  ),
  Name(
    name: "Butter",
    subname: 'Vegetable oil butter',
    qty: '2 × 85g',
    image: 'assets/images/image-removebg-preview (86) 1.png',
    price: 150,
  ),
  Name(
    name: "Beer",
    subname: 'Lager beer',
    qty: '1/2 lit',
    image: 'assets/images/image-removebg-preview (89) 1.png',
    price: 100,
  ),
];

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          CustomContainer(
            text: Apptext.shoptext,
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 288,
              ),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.gridveiwcolor,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          child: Image.asset(
                            data[index].image,
                            scale: 2.5,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Globaltext(
                                text: data[index].name,
                                fontfamily: GoogleFonts.inter().toString(),
                                fontweight: FontWeight.w400,
                              ),
                              Globaltext(
                                text: data[index].subname,
                                fontfamily: GoogleFonts.inter().toString(),
                              ),
                              Globaltext(
                                text: data[index].qty,
                                fontfamily: GoogleFonts.inter().toString(),
                                color: AppColor.shopqtycolor,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                        Row(
                          children: [
                            Globaltext(
                              text: "₹ ${data[index].price.toString()}",
                              fontfamily: GoogleFonts.inter().toString(),
                              fontweight: FontWeight.w500,
                              fontsize: 14,
                            ),
                            const Spacer(),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: AppColor.primarycolor),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                ),
                              ),
                              child: Text(
                                'ADD',
                                style: TextStyle(
                                  color: AppColor.primarycolor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
