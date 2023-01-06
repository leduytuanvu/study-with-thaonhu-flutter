import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/widget_constant.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var searchTxtController = TextEditingController();
  var _serchTxt = "";

  @override
  void initState() {
    searchTxtController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchTxtController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 74.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.w),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Colors.grey.shade100,
              ),
              child: Row(
                children: [
                  sizedBoxHor(12.w),
                  Icon(
                    Icons.search,
                    color: Colors.black26,
                    size: 20.sp,
                  ),
                  sizedBoxHor(10.w),
                  Expanded(
                    child: Center(
                      child: TextField(
                        controller: searchTxtController,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Search course',
                          hintStyle: GoogleFonts.poppins(
                            color: Colors.black26,
                            fontSize: 14.sp,
                          ),
                        ),
                        style: GoogleFonts.poppins(
                            fontSize: 14.sp, color: Colors.black54),
                        cursorWidth: 1,
                        cursorColor: Colors.black12,
                        onChanged: (value) {
                          setState(() {
                            _serchTxt = value;
                          });
                        },
                      ),
                    ),
                  ),
                  _serchTxt.isNotEmpty
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              _serchTxt = "";
                              searchTxtController.clear();
                            });
                          },
                          icon: Icon(
                            Icons.close,
                            color: Colors.black26,
                            size: 20.sp,
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 74.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  for (int i = 0; i < 20; i++) ...{
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.2.w,
                          color: Colors.grey.shade200,
                        ),
                        borderRadius: BorderRadius.circular(8.r),
                        color: Colors.grey.shade100,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(100.r),
                            child: Image.network(
                              "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8N3x8fGVufDB8fHx8&w=1000&q=80",
                              height: 50.h,
                              width: 50.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.h),
                            child: Text(
                              'PRX130',
                              style: GoogleFonts.poppins(),
                            ),
                          ),
                          subtitle: Text(
                            'Description of this course',
                            style: GoogleFonts.poppins(fontSize: 12.sp),
                          ),
                          trailing: const Icon(Icons.more_vert),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                  }
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
