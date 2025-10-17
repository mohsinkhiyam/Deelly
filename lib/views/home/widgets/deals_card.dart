import 'package:deelly/core/assets/images_assets.dart';
import 'package:deelly/core/colors/app_colors.dart';
import 'package:deelly/core/utils/responsive_config.dart';
import 'package:deelly/views/common/app_text.dart';
import 'package:flutter/material.dart';

class DealsCard extends StatelessWidget {
  const DealsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 265.w,
        height: 256.h,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 160.h,
      
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      child: Image.asset(
                        ImagesAssets.dealNikoRomito,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10.h,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 11, right: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 30.h,
                            width: 77.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.black.withOpacity(0.5),
                              border: Border.all(
                                width: 1,
                                color: AppColors.white,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: AppText(
                              text: "30% off",
                              color: AppColors.white,
                              fontSize: 14,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            size: 30,
                            color: AppColors.favorite,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
      
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(text: "Ristorante – Niko Romito"),
                AppText(
                  text: "Dine and enjoy a 20% Discount",
                  color: AppColors.textSecondary,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                Divider(color: AppColors.divider),
      
                Row(
                  children: [
                    Icon(Icons.location_on_outlined, color: Color(0xFFA3A3A3)),
                    SizedBox(width: 5),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: AppText(
                              text:
                                  "Ristorante L'Olivo at Al Mah Ristorante - Niko Romito",
                              overflow: TextOverflow.ellipsis,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.textSecondary,
                            ),
                          ),
                          SizedBox(width: 4),
                          AppText(
                            text: "+5 more",
                            color: AppColors.dealOfDay,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        AppText(
                          text: "5.0",
                          fontSize: 12,
      
                          color: AppColors.textSecondary,
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.star, size: 12.sp, color: AppColors.primary),
                        SizedBox(width: 5),
                        AppText(
                          text: "(7 reviews)",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textSecondary,
                        ),
                      ],
                    ),
      
                    AppText(
                      text: "Sold: 7350",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textSecondary,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
