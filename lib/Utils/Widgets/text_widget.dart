import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
    this.text, {
    Key? key,
    this.color = AppColor.blackColor,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 16.0,
    this.textAlign = TextAlign.center,
    this.decoration = TextDecoration.none,
    this.maxLine,
    this.textOverflow,
    this.height,
  }) : super(key: key);
  final Color color;
  final String text;
  final double? height;
  final FontWeight fontWeight;
  final double fontSize;

  final TextOverflow? textOverflow;
  final TextAlign textAlign;
  final int? maxLine;
  final TextDecoration decoration;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        overflow: textOverflow,
        maxLines: maxLine,
        style: GoogleFonts.epilogue(
            decoration: decoration,
            color: color,
            height: height,
            fontWeight: fontWeight,
            fontSize: fontSize.sp,
        ));
  }
}
