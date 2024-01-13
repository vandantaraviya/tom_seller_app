import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tom_seller_app/Utils/constant.dart';

import 'text_widget.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.text, this.onTap,});
  final String? text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: 41.h,
          decoration: const BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(5),),
          ),
          child: Center(
            child: TextWidget(
              text!,
              color: AppColor.whiteColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
