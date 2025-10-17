import 'package:deelly/core/colors/app_colors.dart';
import 'package:deelly/views/common/app_text.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: AppText(text: "Coming soon..", color: AppColors.black, fontSize:   20, fontWeight: FontWeight.w700, height: 12/20,),
      ),
    );
  }
}