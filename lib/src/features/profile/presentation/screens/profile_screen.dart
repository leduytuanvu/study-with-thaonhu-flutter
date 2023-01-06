import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../widgets/gradient_button.dart';
import '../widgets/profile_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200.h,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 110.h,
                    color: Colors.grey.shade100,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 35.h),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.r),
                        color: Colors.green,
                      ),
                      height: 100.h,
                      width: 100.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.r),
                        child: Image.network(
                          "https://kynguyenlamdep.com/wp-content/uploads/2022/08/avatar-co-gai-cuc-cool-ngau-600x592.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Le Duy Tuan Vu",
                          // style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          //     fontSize: 18.sp, fontWeight: FontWeight.w600),
                          style: GoogleFonts.poppins(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          )),
                      SizedBox(height: 6.h),
                      Text(
                        "leduytuanvu.work@gmail.com",
                        style: GoogleFonts.poppins(),
                      ),
                      SizedBox(height: 8.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 26.h),
          const ProfileItem(
            title: "Full name",
          ),
          const ProfileItem(
            title: "Email",
          ),
          const ProfileItem(
            title: "Phone",
          ),
          const ProfileItem(
            title: "Birthday",
          ),
          const ProfileItem(
            title: "Gender",
          ),
          // // SizedBox(height: 10.h),
          // // controller.user.value.signInByGoogle == true
          // "123".length == 3
          //     ? const SizedBox.shrink()
          //     : const ProfileRowItemComponent(
          //         title: "Password",
          //       ),
          const ProfileItem(
            title: "Password",
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: GradientButton(
              title: 'SIGN OUT',
              function: () {
                showDialog<String>(
                  barrierColor: Colors.black87.withOpacity(0.8),
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text(
                      'Are you sure to logout ?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: GoogleFonts.montserrat().fontFamily,
                        fontSize: 18.sp,
                      ),
                    ),
                    actions: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 14.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 35.w,
                              width: 90.w,
                              child: GradientButton(
                                title: 'CANCLE',
                                function: (() {}),
                                fontSize: 13.sp,
                                radius: 8.r,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            SizedBox(
                              height: 35.w,
                              width: 90.w,
                              child: GradientButton(
                                title: 'OK',
                                function: (() async {}),
                                fontSize: 13.sp,
                                radius: 8.r,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
              fontSize: 14.sp,
            ),
          ),
          SizedBox(height: 60.h)
        ],
      ),
    );
  }
}
