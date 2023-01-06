import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_with_thaonhu_flutter/src/configs/app_color.dart';

class CustomTextField extends StatefulWidget {
  final Key? textFieldKey;
  final TextEditingController? controller;
  final bool? isPassword;
  final String? hintText;
  final String? errorText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? inputType;
  final double? height;

  const CustomTextField({
    Key? key,
    this.textFieldKey,
    this.controller,
    this.isPassword = false,
    this.hintText,
    this.errorText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
    this.inputType,
    this.height = 50,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: widget.height!.h,
      decoration: BoxDecoration(
        color: AppColor.lightSecondary,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  style: TextStyle(
                    fontFamily: GoogleFonts.montserrat().fontFamily,
                    color: Colors.black54,
                    fontSize: 14.sp,
                  ),
                  controller: widget.controller,
                  keyboardType: widget.inputType,
                  key: widget.textFieldKey,
                  obscureText:
                      widget.isPassword! == true ? _obscureText : false,
                  onSaved: widget.onSaved,
                  validator: widget.validator,
                  onFieldSubmitted: widget.onFieldSubmitted,
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    hintStyle: TextStyle(
                      fontFamily: GoogleFonts.montserrat().fontFamily,
                      color: Colors.black26,
                      fontSize: 14.sp,
                    ),
                    errorText: widget.errorText,
                    helperText: widget.helperText,
                    helperStyle: TextStyle(
                      fontFamily: GoogleFonts.montserrat().fontFamily,
                      color: Colors.black26,
                      fontSize: 14.sp,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: widget.isPassword == true
                    ? Padding(
                        padding: EdgeInsets.only(right: 6.w),
                        child: Icon(
                          _obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: _obscureText ? Colors.black12 : Colors.blue,
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
