import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldCourse extends StatefulWidget {
  final Key? textFieldKey;
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final String? errorText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? inputType;
  final double? height;

  const TextFieldCourse({
    Key? key,
    this.textFieldKey,
    this.controller,
    this.hintText,
    this.errorText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
    this.inputType,
    this.height = 50,
  }) : super(key: key);

  @override
  State<TextFieldCourse> createState() => _TextFieldCourseState();
}

class _TextFieldCourseState extends State<TextFieldCourse> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        color: Colors.black54,
        fontSize: 14.sp,
      ),
      controller: widget.controller,
      keyboardType: widget.inputType,
      key: widget.textFieldKey,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: GoogleFonts.poppins(
          color: Colors.black26,
          fontSize: 14.sp,
        ),
        hintText: widget.hintText,
        hintStyle: GoogleFonts.montserrat(
          color: Colors.black26,
          fontSize: 14.sp,
        ),
        errorText: widget.errorText,
        helperText: widget.helperText,
        helperStyle: GoogleFonts.montserrat(
          color: Colors.black26,
          fontSize: 14.sp,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black38),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black38),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      ),
    );
  }
}
