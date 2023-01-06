import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../configs/app_color.dart';

class GradientButton extends StatelessWidget {
  final String title;
  final VoidCallback? function;
  final double height;
  final double width;
  final double fontSize;
  final double radius;

  const GradientButton({
    super.key,
    required this.title,
    required this.function,
    this.height = 50,
    this.width = 100,
    this.radius = 8,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 1,
        minimumSize: Size(width, height),
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius.sp),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [AppColor.buttonRadient1, AppColor.buttonRadient3],
          ),
          borderRadius: BorderRadius.all(Radius.circular(radius.sp)),
        ),
        child: Container(
          constraints: BoxConstraints(minWidth: width, minHeight: height),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius.sp),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: fontSize.sp,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
