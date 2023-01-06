import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_with_thaonhu_flutter/src/constants/widget_constant.dart';
import 'package:study_with_thaonhu_flutter/src/widgets/gradient_button.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Course",
            style: GoogleFonts.poppins(fontSize: 16.sp),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxVer(10.h),
                sizedBoxHor(MediaQuery.of(context).size.width),
                for (int i = 0; i < 10; i++) ...{
                  sizedBoxVer(10.h),
                  Row(
                    children: [
                      Text(
                        "Question ${i + 1} : ",
                        style: GoogleFonts.poppins(color: Colors.blue),
                      ),
                      Text(
                        "What is your name ?",
                        style: GoogleFonts.poppins(),
                      ),
                    ],
                  ),
                  sizedBoxVer(20.h),
                  Container(
                    height: 40.h,
                    width: double.infinity,
                    color: Colors.grey.shade200,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Text(
                          "A. Thao Nhu A",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                    ),
                  ),
                  sizedBoxVer(10.h),
                  Container(
                    height: 40.h,
                    width: double.infinity,
                    color: Colors.grey.shade200,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Text(
                          "A. Thao Nhu A",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                    ),
                  ),
                  sizedBoxVer(10.h),
                  Container(
                    height: 40.h,
                    width: double.infinity,
                    color: Colors.grey.shade200,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Text(
                          "A. Thao Nhu A",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                    ),
                  ),
                  sizedBoxVer(10.h),
                  Container(
                    height: 40.h,
                    width: double.infinity,
                    color: Colors.grey.shade200,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Text(
                          "A. Thao Nhu A",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                    ),
                  ),
                  sizedBoxVer(20.h),
                },
                sizedBoxVer(20.h),
                GradientButton(title: "DONE", function: () {}),
                // sizedBoxVer(.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
