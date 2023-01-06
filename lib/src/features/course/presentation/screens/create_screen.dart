import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_with_thaonhu_flutter/src/constants/widget_constant.dart';
import 'package:study_with_thaonhu_flutter/src/widgets/custom_text_field.dart';

import '../../../../widgets/gradient_button.dart';
import 'create_course_by_hand_screen.dart';
import 'create_course_by_text_file_screen.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 12.w, top: 16.w),
          child: Text(
            "Create new course",
            style: GoogleFonts.poppins(fontSize: 20.sp),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h)
              .copyWith(top: 24.h, bottom: 24.h),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              // border: Border.all(),
            ),
            height: 50.h,
            child: const Center(
              child: CustomTextField(
                hintText: "Name of this course",
              ),
              // child: TextField(
              //   cursorWidth: 1,
              //   cursorColor: Colors.black26,
              //   decoration: InputDecoration(
              //     hintText: "Name of new course",
              //     hintStyle: GoogleFonts.poppins(
              //       color: Colors.black26,
              //       fontSize: 14.sp,
              //     ),
              //     contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
              //     focusedBorder: const UnderlineInputBorder(
              //       borderSide: BorderSide(color: Colors.black38),
              //     ),
              //   ),
              //   style: GoogleFonts.poppins(
              //     color: Colors.black87,
              //     fontSize: 14.sp,
              //   ),
              // ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Row(
            children: [
              Expanded(
                child: GradientButton(
                  title: "CREATE BY TEXT FILE",
                  function: () {
                    Navigator.push(
                      (context),
                      MaterialPageRoute(
                        builder: (context) =>
                            const CreateCourseByTextFileScreen(),
                      ),
                    );
                  },
                  fontSize: 13.sp,
                ),
              ),
              sizedBoxHor(6.w),
              Expanded(
                child: GradientButton(
                  title: "CREATE BY HAND",
                  function: () {
                    Navigator.push(
                      (context),
                      MaterialPageRoute(
                        builder: (context) => const CreateCourseByHandScreen(),
                      ),
                    );
                  },
                  fontSize: 13.sp,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
