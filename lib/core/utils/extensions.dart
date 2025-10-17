import 'package:deelly/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

extension GradientWidgetExtension on Widget {
  Widget withGradient({
    double? borderRadius,
  }) {
    return Container(
      
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
AppColors.primary,
AppColors.secondary,
        ]),

       
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
    
      ),
      child: ClipRRect(
        // If borderRadius is provided, clip children to that radius
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
        child: this,
      ),
    );
  }
}
