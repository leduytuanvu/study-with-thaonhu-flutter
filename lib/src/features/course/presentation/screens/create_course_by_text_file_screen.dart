import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_with_thaonhu_flutter/src/widgets/gradient_button.dart';

import '../../../../constants/widget_constant.dart';

class CreateCourseByTextFileScreen extends StatefulWidget {
  const CreateCourseByTextFileScreen({super.key});

  @override
  State<CreateCourseByTextFileScreen> createState() =>
      _CreateCourseByTextFileScreenState();
}

class _CreateCourseByTextFileScreenState
    extends State<CreateCourseByTextFileScreen> {
  // Future<File?> _pickFile() async {
  //   String? fileName;
  //   PlatformFile? pickedFile;
  //   // bool isLoading = false;
  //   File? file;
  //   FilePickerResult? result;
  //   try {
  //     // setState(() {
  //     //   isLoading = true;
  //     // });
  //     result = await FilePicker.platform.pickFiles(
  //       type: FileType.custom,
  //       allowedExtensions: ['txt', 'doc', 'docx'],
  //       allowMultiple: false,
  //     );
  //     if (result != null) {
  //       fileName = result.files.first.name;
  //       pickedFile = result.files.first;
  //       file = File(pickedFile.path.toString());
  //       log("FILE NAME$fileName");
  //       log(pickedFile.path.toString());
  //       log(file.toString());
  //     }
  //     // setState(() {
  //     //   isLoading = false;
  //     // });
  //     return file!;
  //   } catch (e) {
  //     log(e.toString());
  //   }
  //   return null;
  // }

  Future _readFile() async {
    String content = "Content";
    String? fileName;
    PlatformFile? pickedFile;
    // bool isLoading = false;
    File? file;
    FilePickerResult? result;
    try {
      // setState(() {
      //   isLoading = true;
      // });
      result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['txt'],
        allowMultiple: false,
      );
      if (result != null) {
        fileName = result.files.first.name;
        pickedFile = result.files.first;
        file = File(pickedFile.path.toString());
        log("FILE NAME $fileName");
        log(pickedFile.path.toString());
        log(file.toString());
        if (await file.exists()) {
          content = await file.readAsString(encoding: utf8);
          log(content);
        }
        // var encryptedBase64EncodedString =
        //     await file.readAsString(encoding: utf8);
        // var decoded = base64.decode(encryptedBase64EncodedString);
        // log(encryptedBase64EncodedString);
        // log(decoded.toString());
        // final directory = await getApplicationDocumentsDirectory();
        // Directory directory = await getExter
        // String path = await _
      }

      // setState(() {
      //   isLoading = false;
      // });
      return file!;
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            // _isLoading
            //     ? Container(
            //         height: 200,
            //         width: 200,
            //         color: Colors.grey,
            //         child: const CircularProgressIndicator(),
            //       )
            //     : const SizedBox.shrink(),
            Padding(
              padding: EdgeInsets.all(12.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedBoxVer(16.h),
                  Center(
                    child: Text(
                      "PRX120",
                      style: GoogleFonts.poppins(fontSize: 20.sp),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  sizedBoxVer(26.h),
                  GestureDetector(
                    onTap: () {
                      _readFile();
                    },
                    child: Container(
                      height: 150.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        border: Border.all(color: Colors.black87, width: 0.2),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.upload_file,
                              color: Colors.black45,
                              size: 30.sp,
                            ),
                            sizedBoxVer(12.h),
                            Text(
                              "Upload file",
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  sizedBoxVer(20.h),
                  GradientButton(title: "CREATE COURSE", function: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
