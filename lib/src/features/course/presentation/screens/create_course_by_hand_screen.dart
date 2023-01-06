import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_with_thaonhu_flutter/src/constants/widget_constant.dart';

import '../widgets/text_field_course.dart';

class CreateCourseByHandScreen extends StatelessWidget {
  const CreateCourseByHandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(12.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "PRX120",
                style: GoogleFonts.poppins(fontSize: 20.sp),
              ),
              sizedBoxVer(14.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  border: Border.all(color: Colors.black87, width: 0.2),
                ),
                // height: 300.h,
                width: double.infinity,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sizedBoxVer(8.h),
                      Center(
                        child: Text(
                          "QUESTION 1",
                          style: GoogleFonts.poppins(
                            fontSize: 13.sp,
                            color: Colors.black45,
                          ),
                        ),
                      ),
                      sizedBoxVer(30.h),
                      const TextFieldCourse(
                        labelText: "Title question",
                      ),
                      sizedBoxVer(10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.photo,
                            size: 30.sp,
                          ),
                          sizedBoxHor(8.w),
                          Icon(
                            Icons.delete,
                            color: Colors.red.shade400,
                            size: 30.sp,
                          ),
                        ],
                      ),
                      sizedBoxVer(20.h),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
