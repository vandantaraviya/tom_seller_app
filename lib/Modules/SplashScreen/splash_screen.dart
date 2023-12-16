import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../Routes/routes.dart';
import '../../Utils/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      if(GetStorage().read(AppPreferencesHelper.userToken) == null) {
        Get.offAllNamed(Routes.loginScreen);
      } else{
        // TODO : MOVE TO HOME SCREEN
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO : DESIGN SPLASH SCREEN
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: ,
    );
  }
}
