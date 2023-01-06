import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_with_thaonhu_flutter/src/constants/widget_constant.dart';
import 'package:study_with_thaonhu_flutter/src/features/course/presentation/screens/home_screen.dart';
import 'package:study_with_thaonhu_flutter/src/features/profile/presentation/screens/profile_screen.dart';

import '../../../course/presentation/screens/create_screen.dart';
import '../../../course/presentation/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _mainIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void navidationTapped(int index) {
    log(index.toString());
    pageController.jumpToPage(index);
  }

  void onPageChanged(int index) {
    setState(() {
      _mainIndex = index;
    });
    log(_mainIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: onPageChanged,
          children: const [
            HomeScreen(),
            SearchScreen(),
            CreateScreen(),
            ProfileScreen(),
          ],
        ),
        bottomNavigationBar: Container(
          height: 58.h,
          color: Colors.grey.shade200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  navidationTapped(0);
                },
                child: Container(
                  width: 50.w,
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: _mainIndex == 0 ? Colors.black : Colors.grey,
                      ),
                      sizedBoxVer(3.h),
                      Text(
                        "Home",
                        style: GoogleFonts.poppins(fontSize: 10.sp),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  navidationTapped(1);
                },
                child: Container(
                  color: Colors.transparent,
                  width: 50.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: _mainIndex == 1 ? Colors.black : Colors.grey,
                      ),
                      sizedBoxVer(3.h),
                      Text(
                        "Search",
                        style: GoogleFonts.poppins(fontSize: 10.sp),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  navidationTapped(2);
                },
                child: Container(
                  color: Colors.transparent,
                  width: 50.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: _mainIndex == 2 ? Colors.black : Colors.grey,
                      ),
                      sizedBoxVer(3.h),
                      Text(
                        "Create",
                        style: GoogleFonts.poppins(fontSize: 10.sp),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  navidationTapped(3);
                },
                child: Container(
                  color: Colors.transparent,
                  width: 50.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_circle,
                        color: _mainIndex == 3 ? Colors.black : Colors.grey,
                      ),
                      sizedBoxVer(3.h),
                      Text(
                        "Profile",
                        style: GoogleFonts.poppins(fontSize: 10.sp),
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
}
