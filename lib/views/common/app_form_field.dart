import 'package:deelly/core/colors/app_colors.dart';
import 'package:deelly/core/utils/responsive_config.dart';
import 'package:deelly/views/common/app_text.dart';
import 'package:flutter/material.dart';

class AppFormField extends StatelessWidget {
  final String text;
  
  final String? hint;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

 








  const AppFormField({
    super.key,
    this.hint,
    this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
   required this.text,
    
   
 
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(text: text, color:AppColors.black , fontWeight: FontWeight.w400, letterSpacing: -0.17,),

        SizedBox(height: 10.h,),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          validator: validator,
          
          
          decoration: InputDecoration(
           
            hintText: hint,
           
            hintStyle: TextStyle(
              fontSize: 16.sp,
              height: 18/16,
              letterSpacing: -0.71,
              color: AppColors.black.withOpacity(0.5),
              fontWeight: FontWeight.w400
            ),
           
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.formFieldBorder, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.formFieldBorder, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.primary, width: 1),
            ),
          ),
        ),
      ],
    );
  }
}
