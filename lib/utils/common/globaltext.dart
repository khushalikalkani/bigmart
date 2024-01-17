import 'package:flutter/material.dart';

class Globaltext extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontsize;
  final dynamic fontweight;
  final String? fontfamily;
  final TextStyle? textStyle;


    Globaltext({
    super.key,
    required this.text,
    this.color,
    this.fontsize,
    this.fontweight,
    this.fontfamily, this.textStyle
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: textStyle ?? TextStyle(

        color: color ?? Colors.black,
        fontSize: fontsize ?? 14,
        fontWeight: fontweight ?? FontWeight.w500,
        fontFamily: fontfamily ?? 'InknutAntiqua',
      ),
    );
  }
}
