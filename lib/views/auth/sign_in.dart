import 'package:deelly/core/assets/icons_assets.dart';
import 'package:deelly/core/colors/app_colors.dart';
import 'package:deelly/core/utils/responsive_config.dart';
import 'package:deelly/views/common/app_button.dart';
import 'package:deelly/views/common/app_form_field.dart';
import 'package:deelly/views/common/app_text.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final email = TextEditingController(text: "temp17706@gmail.com");
  final pass = TextEditingController(text: "123456789");
  final signInformKey = GlobalKey<FormState>();

  bool _isCheckedTandD = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 25,
        title: AppText(
          text: "Sign In",
          color: AppColors.black,
          fontSize: 25,
          fontWeight: FontWeight.w600,
          height: 25 / 18,
          letterSpacing: -0.17,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 74.h),
              SvgPicture.asset(IconsAssets.appLogo, height: 75.h, width: 230.w),
              SizedBox(height: 74.h),

              Form(
                key: signInformKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AppFormField(
                      text: "Email",
                      hint: "Email",
                      controller: email,
                    ),
                    SizedBox(height: 31.h),
                    AppFormField(
                      text: "Password",
                      hint: "Password",
                      controller: pass,
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: AppText(
                        text: "Forgot password?",
                        fontSize: 12,
                        height: 18 / 12,
                        letterSpacing: -0.17,
                        color: AppColors.link,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: const VisualDensity(
                      vertical: -4,
                      horizontal: -4,
                    ),
                    value: _isCheckedTandD,
                    onChanged: (value) {
                      setState(() {
                        _isCheckedTandD = value ?? false;
                      });
                    },
                    side: BorderSide(
                      color: AppColors.black.withOpacity(0.5),
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),

                    activeColor: AppColors.primary,
                    checkColor: Colors.white,
                  ),
                  SizedBox(width: 6),
                  AppText(
                    text: "I agree with the terms and condition",
                    fontSize: 15,
                    height: 15 / 12,
                    letterSpacing: -0.17,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black.withOpacity(0.5),
                  ),
                ],
              ),

              SizedBox(height: 54.h),
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 14.sp, height: 1.6),
                  children: [
                    TextSpan(
                      text: "Don’t have an account?",
                      style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: " Sign up",
                      style: TextStyle(
                        color: AppColors.signUpText,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 73.h),

              AppButton(
                onPressed: () {},
                text: "Log In",
                height: 50,
                minWidth: double.maxFinite,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
