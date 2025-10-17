import 'package:deelly/core/assets/icons_assets.dart';
import 'package:deelly/core/colors/app_colors.dart';
import 'package:deelly/core/utils/responsive_config.dart';
import 'package:deelly/views/common/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'UAE';
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: AppBar(
            backgroundColor: AppColors.searchBarBg,
            automaticallyImplyLeading: false,
            forceMaterialTransparency: true,
            leadingWidth: 41.w,
            leading: StatefulBuilder(
              builder: (context, setState) {
                return DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    menuWidth: 60.w,

                    value: dropdownValue,
                    icon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: AppColors.textPrimary,
                    ),
                    iconSize: 20,
                    dropdownColor: AppColors.primary,
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      }
                    },
                    items: <String>['UAE', 'PK', 'US']
                        .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        })
                        .toList(),
                  ),
                );
              },
            ),

            centerTitle: true,
            title: SvgPicture.asset(
              IconsAssets.appLogo,
              fit: BoxFit.contain,
              height: kToolbarHeight * 0.7,
            ),
            actions: [
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 38.w,
                  width: 32.h,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: SvgPicture.asset(
                          IconsAssets.buyCart,
                          height: 24,
                          width: 24,
                        ),
                      ),
                      Positioned(
                        top: 4.h,
                        right: 3.w,
                        child: Container(
                          width: 22,
                          height: 22,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: AppColors.white,
                            ),
                          ),
                          child: AppText(
                            text: "03",
                            color: AppColors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
