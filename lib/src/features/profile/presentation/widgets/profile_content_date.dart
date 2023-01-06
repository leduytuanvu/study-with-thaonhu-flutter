import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileContentDate extends StatelessWidget {
  const ProfileContentDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: MediaQuery.of(context).size.width,
      child: DateTimePicker(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 0, bottom: 0.h),
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide.none,
          ),
          hintText: "Choose date",
          prefixIconConstraints: const BoxConstraints(),
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0.r),
            child: const Icon(
              Icons.calendar_month,
              color: Colors.black38,
            ),
          ),
        ),
        initialValue: null,
        style: GoogleFonts.poppins(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
        onChanged: (val) => {},
        validator: (val) {
          return null;
        },
        onSaved: (val) => {},
      ),
    );
  }
}
