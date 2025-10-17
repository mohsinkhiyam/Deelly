import 'package:deelly/core/colors/app_colors.dart';
import 'package:deelly/core/utils/responsive_config.dart';
import 'package:deelly/views/categories/categories.dart';
import 'package:deelly/views/home/home.dart';
import 'package:deelly/views/locations/locations.dart';
import 'package:deelly/views/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Home(),
    Categories(),
   Locations(),
     Profile(),
  ];

  final List<GButton> _tabs = [
    GButton(
     
      icon: Icons.home_filled,
      
      text: 'Home',
      textStyle: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.white,
      ),
      iconColor: AppColors.bottomBarIcons,
      iconActiveColor: AppColors.white,
      onPressed: () {},
      borderRadius: BorderRadius.circular(10),
      padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 18.w),
      backgroundGradient: LinearGradient(
        colors: [AppColors.primary, AppColors.secondary],
      ),
    ),
    GButton(
    
      icon: Icons.grid_view_rounded,
      text: 'Categories',
      textStyle: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.white,
      ),
      iconColor: AppColors.bottomBarIcons,
      iconActiveColor: AppColors.white,
      onPressed: () {},
      borderRadius: BorderRadius.circular(10),
      padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 18.w),
      backgroundGradient: LinearGradient(
        colors: [AppColors.primary, AppColors.secondary],
      ),
    ),
    GButton(

      icon: Icons.location_on_rounded,
      text: 'Locations',
      textStyle: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.white,
      ),
      iconColor: AppColors.bottomBarIcons,
      iconActiveColor: AppColors.white,
      onPressed: () {},
      borderRadius: BorderRadius.circular(10),
      padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 18.w),
      backgroundGradient: LinearGradient(
        colors: [AppColors.primary, AppColors.secondary],
      ),
    ),
    GButton(
 
      icon: Icons.person_2_rounded,
      text: 'Profile',
      gap: 5,
      textStyle: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.white,
      ),
      iconColor: AppColors.bottomBarIcons,
      iconActiveColor: AppColors.white,
      onPressed: () {},
      borderRadius: BorderRadius.circular(10),
      padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 18.w),
      backgroundGradient: LinearGradient(
        colors: [AppColors.primary, AppColors.secondary],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _screens[_selectedIndex],
      bottomNavigationBar: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: Offset(0, -10),
                blurRadius: 20,
                spreadRadius: 0,
              ),
            ],
          ),
          child: GNav(
            activeColor: Colors.white,
            iconSize: 24,

            duration: Duration(milliseconds: 400),

            tabs: _tabs,
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
