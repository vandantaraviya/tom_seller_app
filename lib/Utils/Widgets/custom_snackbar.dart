import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant.dart';

class SnackBars {
  ///
  /// Error SnackBar
  ///
  static errorSnackBar(
      {required String content, Color textColor = AppColor.whiteColor}) {
    return Get.rawSnackbar(
        message: content,
        backgroundColor: AppColor.redColor.withOpacity(0.8),
        margin: const EdgeInsets.all(15),
        borderRadius: 10);
  }

  ///
  /// Success SnackBar
  ///
  static successSnackBar(
      {required String content, Color textColor = AppColor.blackColor}) {
    return Get.rawSnackbar(
        message: content,
        backgroundColor: Colors.green,
        snackPosition: SnackPosition.TOP,
        margin: const EdgeInsets.all(15),
        borderRadius: 10);
  }

  static normalSnackBar(
      {required String content,
      Color textColor = AppColor.whiteColor,
      SnackPosition snackPosition = SnackPosition.BOTTOM}) {
    return Get.rawSnackbar(
        message: content,
        backgroundColor: Colors.black.withOpacity(0.6),
        snackPosition: snackPosition,
        margin: const EdgeInsets.all(15),
        borderRadius: 10);
  }
}
