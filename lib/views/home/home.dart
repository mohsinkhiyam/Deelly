import 'package:deelly/core/assets/icons_assets.dart';
import 'package:deelly/core/assets/images_assets.dart';
import 'package:deelly/core/colors/app_colors.dart';
import 'package:deelly/core/utils/extensions.dart';
import 'package:deelly/core/utils/responsive_config.dart';
import 'package:deelly/providers/deal_selection_provider.dart';
import 'package:deelly/providers/discount_filter_provider.dart';
import 'package:deelly/views/common/app_bar.dart';
import 'package:deelly/views/common/app_text.dart';
import 'package:deelly/views/home/widgets/deals_card.dart';
import 'package:deelly/views/home/widgets/our_partners.dart';
import 'package:deelly/views/home/widgets/offfers_carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.searchBarBg,
      appBar: AppBarHome(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 21),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 44.h,
                      padding: EdgeInsets.symmetric(horizontal: 17),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            IconsAssets.search,
                            height: 20,
                            width: 20,
                          ),

                          SizedBox(width: 10.71),
                          AppText(
                            text: "Search...",
                            color: AppColors.searchText,
                            fontSize: 14,
                            height: 16 / 14,
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 13),

                  Container(
                    padding: EdgeInsets.all(15),
                    height: 44,
                    width: 44,
                    child: SvgPicture.asset(IconsAssets.filter),
                  ).withGradient(),
                ],
              ),
            ),

            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),

              child: Column(
                children: [
                  SizedBox(height: 27.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(text: "Filter By Category", fontSize: 18),
                      SizedBox(height: 7.h),
                      SizedBox(
                        height: 92.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 70.w,
                                  padding: EdgeInsets.all(12),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: AppColors.categoryDiningBg,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    ImagesAssets.categoryDining,
                                  ),
                                ),

                                AppText(
                                  text: "Dinning",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.filerCategoriesText,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 70.w,
                                  padding: EdgeInsets.all(12),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: AppColors.categorySalonBg,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    ImagesAssets.categoryEntertainment,
                                  ),
                                ),

                                AppText(
                                  text: "Saloon/Spa",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.filerCategoriesText,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 70.w,
                                  padding: EdgeInsets.all(12),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: AppColors.categoryEntertainmentBg,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    ImagesAssets.categorySalonSpa,
                                  ),
                                ),

                                AppText(
                                  text: "Entertainment",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.filerCategoriesText,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 70.w,
                                  padding: EdgeInsets.all(12),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: AppColors.categoryCleaningBg,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    ImagesAssets.categoryCleaning,
                                  ),
                                ),

                                AppText(
                                  text: "Cleaning",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.filerCategoriesText,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),
                  Divider(color: AppColors.divider),
                  SizedBox(height: 16.h),

                  Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    AppText(text: "Filter By Discount", fontSize: 18),
    SizedBox(height: 5.h),

    Consumer<DiscountFilterProvider>(
      builder: (context, discountProvider, _) {
        final discounts = ["Up to 10%", "Up to 20%", "Up to 30%", "Up to 50%"];

        return SizedBox(
          height: 40.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemCount: discounts.length,
            itemBuilder: (context, index) {
              final isSelected = discountProvider.selectedIndex == index;

              return GestureDetector(
                onTap: () => discountProvider.selectDiscount(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: 40.h,
                  width: 100.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isSelected
                        ? AppColors.primary.withOpacity(0.15)
                        : Colors.transparent,
                    border: Border.all(
                      color: isSelected
                          ? AppColors.primary
                          : AppColors.discountBorder,
                      width: 1,
                    ),
                  ),
                  child: AppText(
                    text: discounts[index],
                    color: isSelected
                        ? AppColors.textPrimary
                        : AppColors.discountText,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              );
            },
          ),
        );
      },
    ),
  ],
),

                  SizedBox(height: 19.h),
                  Divider(color: AppColors.divider),
                  SizedBox(height: 14.h),

                  Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    AppText(text: "Upcoming Deal", fontSize: 18),
    SizedBox(height: 7.h),

    Consumer<DealSelectionProvider>(
      builder: (context, dealProvider, _) {
        return SizedBox(
          height: 53.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemCount: 7,
            itemBuilder: (context, index) {
              final isSelected = dealProvider.selectedIndex == index;

              return GestureDetector(
                onTap: () {
                  dealProvider.selectDeal(index);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: 53.h,
                  width: 40.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isSelected
                        ? AppColors.primary.withOpacity(0.20)
                        : Colors.transparent,
                    border: Border.all(
                      color: isSelected
                          ? AppColors.primary
                          : AppColors.discountBorder,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppText(
                        text: "25",
                        color: isSelected
                            ? AppColors.textPrimary
                            : AppColors.dealText,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      AppText(
                        text: "Today",
                        color: isSelected
                            ? AppColors.textPrimary
                            : AppColors.dealText,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    ),
  ],
),
                  SizedBox(height: 34.h),
                  OfffersCarouselSlider(),
                  SizedBox(height: 20.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(text: "Deal of the day"),
                      SizedBox(height: 15.h),
                      SizedBox(
                        height: 256.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) =>
                              SizedBox(width: 15),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return DealsCard();
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 21),
                  OurPartners(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
