import 'package:carousel_slider/carousel_slider.dart';
import 'package:deelly/core/assets/images_assets.dart';
import 'package:deelly/core/colors/app_colors.dart';
import 'package:deelly/core/utils/responsive_config.dart';
import 'package:deelly/views/common/app_text.dart';
import 'package:flutter/material.dart';

class OfffersCarouselSlider extends StatefulWidget {
  const OfffersCarouselSlider({super.key});

  @override
  State<OfffersCarouselSlider> createState() => _OfffersCarouselSliderState();
}

class _OfffersCarouselSliderState extends State<OfffersCarouselSlider> {
  int _current = 0;

  final List<String> imgList = [
    ImagesAssets.diningDiscount,
    ImagesAssets.diningDiscount,
    ImagesAssets.diningDiscount,
    ImagesAssets.diningDiscount,
    ImagesAssets.diningDiscount,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 🖼 Carousel
        CarouselSlider(
          items: imgList
              .map(
                (item) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(3.1416),

                            child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        ),

                        Positioned.fill(
                          child: Container(
                            padding: EdgeInsets.only(
                              top: 11,
                              left: 16,
                              right: 20,
                              bottom: 19,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFDF7E7E),
                                  AppColors.black.withOpacity(0.5),
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    AppText(
                                      text: "Only AED 75",
                                      fontSize: 20,
                                      color: AppColors.white,
                                    ),
                                  ],
                                ),

                                SizedBox(height: 13.h),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 21.h,
                                      width: 74.w,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: AppColors.white,
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: AppText(
                                        text: "30% Off",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height: 7.h),
                                    AppText(
                                      text: "Dinner",
                                      color: AppColors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    AppText(
                                      text: "Zheng He’s",
                                      letterSpacing: -0.6,
                                      color: AppColors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
            height: 160.h,
            viewportFraction: 1,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),

        const SizedBox(height: 10),

        // 🔘 Custom indicators
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            final bool isActive = _current == entry.key;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              height: 7,
              width: isActive ? 18 : 7,
              decoration: BoxDecoration(
                color: isActive
                    ? AppColors.primary
                    : AppColors.courselInactiveIndicator,
                borderRadius: BorderRadius.circular(7),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
