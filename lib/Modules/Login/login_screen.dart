import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tom_seller_app/Utils/Widgets/custom_button.dart';
import 'package:tom_seller_app/Utils/Widgets/custom_textfield.dart';
import 'package:tom_seller_app/Utils/Widgets/text_widget.dart';
import 'package:tom_seller_app/Utils/constant.dart';
import 'package:tom_seller_app/generated/assets.dart';
import 'login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: -127,
                left: -114,
                child: Container(
                  height: 300.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor2,
                    shape: BoxShape.circle,
                  ),
                )),
            Positioned(
                top: 86,
                left: 301,
                child: Container(
                  height: 50.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor2,
                    shape: BoxShape.circle,
                  ),
                )),
            Positioned(
                top: 222,
                left: 351,
                child: Container(
                  height: 150.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor2,
                    shape: BoxShape.circle,
                  ),
                )),
            Positioned(
                top: 514,
                left: -114,
                child: Container(
                  height: 150.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor2,
                    shape: BoxShape.circle,
                  ),
                )),
            Positioned(
                top: 750,
                left: 250,
                child: Container(
                  height: 400.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor2,
                    shape: BoxShape.circle,
                  ),
                )),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(Assets.imagesTomLogo),
                    height: 118.h,
                    width: 250.w,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextWidget(
                    AppString.logintitle,
                    color: AppColor.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextField(
                    controller: loginController.emailController,
                    prefixIcon: Icon(CupertinoIcons.profile_circled,
                        size: 20.sp, color: AppColor.primaryColor),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextField(
                    controller: loginController.passwordController,
                    prefixIcon: Icon(CupertinoIcons.lock,
                        size: 20.sp, color: AppColor.primaryColor),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: loginController.check,
                        activeColor: AppColor.primaryColor,
                        onChanged: (value) {
                          setState(() {
                            return loginController.change(value!);
                          });
                        },
                      ),
                      TextWidget(
                        AppString.loginchekbox,
                        fontSize: 15,
                        color: AppColor.blackColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  CustomButton(
                    onTap: () {},
                    text: AppString.logintitle1,
                  ),
                  SizedBox(height: 15.h),
                  TextButton(
                      onPressed: () {}, child: TextWidget(AppString.loginpass,color: AppColor.primaryColor,)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        AppString.loginaccount,
                        fontSize: 15,
                        color: AppColor.blackColor,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: TextWidget(AppString.loginRegister,color: AppColor.primaryColor,)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
