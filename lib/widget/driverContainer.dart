import 'package:flutter/material.dart';

import '../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DriverContainer extends StatelessWidget {
  final IconData icon;
  final String text;
  const DriverContainer({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.h),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 90.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: app_color,
                borderRadius: BorderRadius.circular(50.0.r),
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 35.h,
          width: 140.w,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(7.0.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.0.h),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey.shade400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
