import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import '../../../../configs/app_color.dart';
import '../../../../configs/app_lottie.dart';
import '../../../../constants/widget_constant.dart';
import '../../../../widgets/custom_text_field.dart';
import '../../../../widgets/gradient_button.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightPrimary,
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(32.0.w),
                child: Column(
                  children: [
                    Lottie.asset(
                      AppLottie.loginLottie,
                      height: 250.w,
                      width: 250.w,
                    ),
                    sizedBoxVer(30.h),
                    const CustomTextField(
                      hintText: "Email",
                    ),
                    sizedBoxVer(8.h),
                    const CustomTextField(
                      hintText: "Full name",
                    ),
                    sizedBoxVer(8.h),
                    const CustomTextField(
                      hintText: "Password",
                      isPassword: true,
                    ),
                    sizedBoxVer(8.h),
                    const CustomTextField(
                      hintText: "Re-password",
                      isPassword: true,
                    ),
                    sizedBoxVer(40.h),
                    GradientButton(
                      title: 'SIGN UP',
                      function: () {},
                    ),
                    sizedBoxVer(5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'You already have an account.',
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
                                builder: (context) => const LoginScreen(),
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
                                'Sign in now',
                                style: TextStyle(
                                  fontFamily:
                                      GoogleFonts.montserrat().fontFamily,
                                  color: AppColor.buttonRadient3,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    sizedBoxVer(10.h),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
