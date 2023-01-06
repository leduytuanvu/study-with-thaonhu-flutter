import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:study_with_thaonhu_flutter/src/features/profile/presentation/widgets/profile_content_date.dart';
import 'package:study_with_thaonhu_flutter/src/features/profile/presentation/widgets/profile_content_gender.dart';
import 'package:study_with_thaonhu_flutter/src/features/profile/presentation/widgets/profile_content_phone.dart';

import '../../../../widgets/gradient_button.dart';
import 'profile_content_text.dart';

class ProfileItem extends StatefulWidget {
  final String title;

  const ProfileItem({
    super.key,
    required this.title,
  });

  @override
  State<ProfileItem> createState() => _ProfileItemState();
}

class _ProfileItemState extends State<ProfileItem> {
  var fullNameTextController = TextEditingController();
  var emailTextController = TextEditingController();
  var passTextController = TextEditingController();
  var phoneTextController = TextEditingController();
  var genderTextController = TextEditingController();

  @override
  void initState() {
    fullNameTextController = TextEditingController();
    emailTextController = TextEditingController();
    passTextController = TextEditingController();
    phoneTextController = TextEditingController();
    genderTextController = TextEditingController();

    fullNameTextController.text = "Le Duy Tuan Vu";
    emailTextController.text = "leduytuanvu@gmail.com";
    passTextController.text = "**********";
    phoneTextController.text = "981123234";
    genderTextController.text = "Male";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const SizedBox.shrink();
    Widget value = const SizedBox.shrink();
    switch (widget.title) {
      case "Full name":
        content = ProfileContentText(
          textController: fullNameTextController,
        );
        value = Text(
          "fullname",
          textAlign: TextAlign.right,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.poppins(),
        );
        break;
      case "Email":
        content = ProfileContentText(
          textController: emailTextController,
        );
        value = Text(
          "email",
          // style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.right,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.poppins(),
        );
        break;
      case "Phone":
        content = ProfileContenPhone(
          textController: phoneTextController,
        );
        value = Text(
          "phone",
          textAlign: TextAlign.right,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.poppins(),
        );
        break;
      case "Birthday":
        content = const ProfileContentDate();
        value = Text(
          DateFormat.yMMMMd('en_US').format(
            DateFormat("dd-MM-yyyy").parse("03-07-1998"),
          ),
          textAlign: TextAlign.right,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.poppins(),
        );
        break;
      case "Gender":
        content = ProfileContentGender(
          textController: genderTextController,
        );
        value = Text(
          "gender",
          textAlign: TextAlign.right,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.poppins(),
        );
        break;
      case "Password":
        content = ProfileContentText(
          textController: passTextController,
        );
        value = Text(
          "*************",
          textAlign: TextAlign.right,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.poppins(),
        );
        break;
    }

    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Container(
        color: Colors.grey.shade100.withOpacity(0.6),
        child: Padding(
          padding: EdgeInsets.only(left: 13.w),
          child: GestureDetector(
            onTap: () {
              switch (widget.title) {
                case "Full name":
                  break;
                case "Email":
                  break;
                case "Phone":
                  break;
                case "Gender":
                  break;
                case "Birthday":
                  break;
                case "Password":
                  break;
              }
              showDialog<String>(
                barrierColor: Colors.black87.withOpacity(0.8),
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
                  actionsPadding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                    bottom: 4.w,
                  ),
                  titlePadding: EdgeInsets.only(top: 16.w),
                  title: Text(
                    widget.title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(),
                  ),
                  content: content,
                  actions: <Widget>[
                    widget.title != "Email"
                        ? Padding(
                            padding: EdgeInsets.only(
                                bottom: 14.w, left: 3.w, right: 3.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 35.w,
                                    width: 90.w,
                                    child: GradientButton(
                                      title: 'CANCLE',
                                      function: () {
                                        Navigator.pop(context);
                                      },
                                      fontSize: 13.sp,
                                      radius: 8.r,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 6.w),
                                Expanded(
                                  child: SizedBox(
                                    height: 35.w,
                                    width: 90.w,
                                    child: GradientButton(
                                      title: 'SAVE',
                                      function: (() async {
                                        // controller.updateUser(title: title);
                                      }),
                                      fontSize: 13.sp,
                                      radius: 8.r,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Padding(
                            padding: EdgeInsets.only(
                                bottom: 14.w, left: 3.w, right: 3.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 35.w,
                                    width: 90.w,
                                    child: GradientButton(
                                      title: 'CANCLE',
                                      function: (() {
                                        Navigator.pop(context);
                                      }),
                                      fontSize: 13.sp,
                                      radius: 8.r,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                  ],
                ),
              );
            },
            child: Container(
              color: Colors.transparent,
              child: Row(
                children: [
                  Text(
                    widget.title,
                    style: GoogleFonts.poppins(),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(child: value),
                  SizedBox(
                    height: 45.w,
                    width: 40.w,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 12.sp,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
