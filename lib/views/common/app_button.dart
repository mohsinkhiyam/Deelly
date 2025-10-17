import 'package:deelly/core/colors/app_colors.dart';
import 'package:deelly/core/utils/extensions.dart';
import 'package:deelly/core/utils/responsive_config.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double? height;
  final bool? loading;
  final double? minWidth;
  final double? borderRadius;
  final double? fontSize;
  final double? lineHeight;
  final FontWeight? fontWeight;
  const AppButton({
    super.key,
    required this.text,

    this.onPressed,
    this.height,
    this.loading,
    this.minWidth,
    this.borderRadius,
    this.fontSize,
    this.lineHeight,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      elevation: 0,
      minWidth: minWidth,
      height: height ?? 50.h,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
      ),
      child: loading ?? false
          ? Padding(
              padding: const EdgeInsets.all(5.0),
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: AppColors.white,
              ),
            )
          : Text(
              text,
              style: TextStyle(
                fontSize: fontSize?.sp ?? 14.sp,
                color: AppColors.white,
                fontWeight: fontWeight ?? FontWeight.w500,
                height: lineHeight,
              ),
            ),
    ).withGradient();
  }
}
