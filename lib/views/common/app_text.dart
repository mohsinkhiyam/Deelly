import 'package:deelly/core/colors/app_colors.dart';
import 'package:deelly/core/utils/responsive_config.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final double? height;          
  final int? maxLines;
  final TextOverflow? overflow;
  final bool? softWrap;
  final double? letterSpacing;

  const AppText({
    super.key,
    required this.text,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.height,
    this.maxLines,
    this.overflow,
    this.softWrap, this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.ellipsis,
      
      
      style: TextStyle(
        fontSize: fontSize?.sp ?? 18.sp,
        color: color ?? AppColors.textPrimary,
        fontWeight: fontWeight ?? FontWeight.w500,
        height: height,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
