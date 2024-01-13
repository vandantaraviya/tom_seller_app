import 'package:flutter/material.dart';
import 'package:tom_seller_app/Utils/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.controller, this.prefixIcon, this.labelText, this.hintText});
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final String? labelText;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        autofocus: false,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: AppColor.primaryColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1,color: AppColor.primaryColor),
          ),
          prefixIcon: prefixIcon,
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}
