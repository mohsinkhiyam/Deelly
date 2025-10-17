import 'package:deelly/core/colors/app_colors.dart';
import 'package:deelly/views/common/app_text.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: AppText(text: "Coming soon..", color: AppColors.black, fontSize:   20, fontWeight: FontWeight.w700, height: 12/20,),
      ),
    );
  }
}