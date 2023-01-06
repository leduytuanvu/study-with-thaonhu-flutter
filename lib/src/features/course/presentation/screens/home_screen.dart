import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_with_thaonhu_flutter/src/constants/widget_constant.dart';

import 'course_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var textFieldController = TextEditingController();

  @override
  void initState() {
    textFieldController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 130.h),
            child: TabBarView(
              children: <Widget>[
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Column(
                      children: [
                        SizedBox(height: 10.h),
                        for (int i = 0; i < 20; i++) ...{
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                (context),
                                MaterialPageRoute(
                                  builder: (context) => const CourseScreen(),
                                ),
                              );
                            },
                            child: Container(
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
                                    padding:
                                        EdgeInsets.symmetric(vertical: 4.h),
                                    child: Text(
                                      'PRX130',
                                      style: GoogleFonts.poppins(),
                                    ),
                                  ),
                                  subtitle: Text(
                                    'Description of this course',
                                    style: GoogleFonts.poppins(fontSize: 12.sp),
                                  ),
                                  trailing: GestureDetector(
                                    child: const Icon(Icons.more_vert),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                        }
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
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
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                                subtitle: Text(
                                  'Description of this course, you need to study hard',
                                  style: Theme.of(context).textTheme.titleSmall,
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
                SingleChildScrollView(
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
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                                subtitle: Text(
                                  'Description of this course, you need to study hard',
                                  style: Theme.of(context).textTheme.titleSmall,
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
              ],
            ),
          ),
          Container(
            height: 130.h,
            color: Colors.white,
            child: Column(
              children: [
                sizedBoxVer(24.h),
                Text(
                  "STUDY WITH THAO NHU",
                  style: GoogleFonts.teko(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w800,
                    wordSpacing: 3,
                    color: Colors.black87,
                  ),
                ),
                sizedBoxVer(18.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Colors.grey.shade200,
                    ),
                    height: 44.h,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TabBar(
                        splashBorderRadius: BorderRadius.circular(8.r),
                        indicatorWeight: 1.2,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.r),
                          color: Colors.white,
                        ),
                        // isScrollable: true,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Colors.grey,
                        tabs: [
                          Tab(
                            child: Text(
                              'All course',
                              style: GoogleFonts.poppins(
                                fontSize: 13.sp,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Favorite core',
                              style: GoogleFonts.poppins(
                                fontSize: 13.sp,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'My course',
                              style: GoogleFonts.poppins(
                                fontSize: 13.sp,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
