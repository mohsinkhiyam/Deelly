import 'package:deelly/core/colors/app_colors.dart';
import 'package:deelly/views/common/app_text.dart';
import 'package:flutter/material.dart';

class Locations extends StatefulWidget {
  const Locations({super.key});

  @override
  State<Locations> createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(

      body: Center(
        child: AppText(text: "Coming soon..", color: AppColors.black, fontSize:   20, fontWeight: FontWeight.w700, height: 12/20,),
      ),
    );
  }
}