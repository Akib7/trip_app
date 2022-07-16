import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DriverContainer extends StatelessWidget {
  final IconData icon;
  final String text;
  final AssetImage imageType;
  const DriverContainer(
      {Key? key,
      required this.icon,
      required this.text,
      required this.imageType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 85.h,
              width: 85.w,
              decoration: BoxDecoration(
                color: app_color,
                borderRadius: BorderRadius.circular(50.0.r),
              ),
              child: Image(
                height: 30,
                width: 30,
                image: imageType,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 7.h,
        ),
        Container(
          height: 30.h,
          width: 130.w,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(7.0.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.0.h),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey.shade400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
