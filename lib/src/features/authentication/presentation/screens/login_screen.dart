import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:study_with_thaonhu_flutter/src/constants/widget_constant.dart';
import 'package:study_with_thaonhu_flutter/src/features/authentication/presentation/screens/register_screen.dart';
import '../../../../configs/app_color.dart';
import '../../../../configs/app_icon.dart';
import '../../../../configs/app_lottie.dart';
import '../../../../widgets/custom_text_field.dart';
import '../../../../widgets/gradient_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              sizedBoxVer(20.h),
              Lottie.asset(
                AppLottie.loginLottie,
                height: 250.w,
                width: 250.w,
              ),
              sizedBoxVer(30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: const CustomTextField(hintText: "Email"),
              ),
              sizedBoxVer(8.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: const CustomTextField(
                  hintText: "Password",
                  isPassword: true,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      child: Text(
                        'Forgot password',
                        style: TextStyle(
                          fontFamily: GoogleFonts.montserrat().fontFamily,
                          color: AppColor.buttonRadient3,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ),
                  sizedBoxHor(32.w),
                ],
              ),
              sizedBoxVer(20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: GradientButton(
                  title: 'SIGN IN',
                  function: () {},
                ),
              ),
              sizedBoxVer(4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You do not have account.',
                    style: TextStyle(
                      fontFamily: GoogleFonts.montserrat().fontFamily,
                      color: Colors.black45,
                      fontSize: 14.sp,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        (context),
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                        (route) => false,
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      // height: 30.h,
                      color: Colors.transparent,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 15.h),
                        child: Text(
                          'Sign up now',
                          style: TextStyle(
                            fontFamily: GoogleFonts.montserrat().fontFamily,
                            color: AppColor.buttonRadient3,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxVer(30.h),
              Text(
                'or sign in with',
                style: TextStyle(
                  fontFamily: GoogleFonts.montserrat().fontFamily,
                  color: Colors.grey.shade400,
                  fontSize: 12.sp,
                ),
              ),
              // Text(
              //   'or sign in with',
              //   style: TextStyle(
              //     fontFamily: GoogleFonts.montserrat().fontFamily,
              //     color: Colors.black45,
              //     fontSize: 12.sp,
              //   ),
              // ),
              sizedBoxVer(16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      color: Colors.transparent,
                      height: 45.w,
                      width: 45.w,
                      child: Padding(
                        padding: EdgeInsets.all(6.0.w),
                        child: SvgPicture.asset(AppIcon.googleSvg),
                      ),
                    ),
                  ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
