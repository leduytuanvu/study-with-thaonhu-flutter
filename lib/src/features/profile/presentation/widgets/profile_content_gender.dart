import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileContentGender extends StatelessWidget {
  final TextEditingController textController;
  const ProfileContentGender({
    super.key,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    var listTmp = ["Male", "Female"];
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: Colors.black87,
            style: BorderStyle.solid,
            width: 0.50,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 6.w),
          child: DropdownButton<String>(
            hint: const Text("Choose gender"),
            onTap: (() {}),
            borderRadius: BorderRadius.circular(4.r),
            value: "Male",
            isExpanded: true,
            icon: const Icon(Icons.arrow_drop_down),
            elevation: 0,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 15.sp,
              fontFamily: GoogleFonts.montserrat().fontFamily,
            ),
            onChanged: (String? value) {},
            underline: const SizedBox.shrink(),
            // items: controller.user.value.gender!.genderToString
            //             .capitalizeFirstLetter ==
            //         "Empty"
            items: "123".length == 3
                ? listTmp.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          fontFamily: GoogleFonts.montserrat().fontFamily,
                          color: Colors.black87,
                          fontSize: 15.sp,
                        ),
                      ),
                    );
                  }).toList()
                : listTmp.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          fontFamily: GoogleFonts.montserrat().fontFamily,
                          color: Colors.black87,
                          fontSize: 15.sp,
                        ),
                      ),
                    );
                  }).toList(),
          ),
        ),
      ),
    );
  }
}
