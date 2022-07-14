import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LastButtons extends StatelessWidget {
  const LastButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 15.h),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 55,
              width: 80,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 86, 86, 1),
                borderRadius: BorderRadius.circular(10.0.r),
              ),
              child: const Icon(
                CupertinoIcons.arrow_left_square,
                color: Colors.white,
                size: 30.0,
              ),
            ),
          ),
          SizedBox(
            width: 7.w,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: app_color,
              padding: EdgeInsets.symmetric(horizontal: 75.w, vertical: 22.h),
              textStyle: TextStyle(fontSize: 15.sp),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0.r),
              ),
              minimumSize: Size(160.w, 10.h),
            ),
            child: Text(
              'Create New Trip',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
