import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LastButtons extends StatelessWidget {
  const LastButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.w, right: 21.w, top: 8.h, bottom: 8.h),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 47.h,
              width: 70.w,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 86, 86, 1),
                borderRadius: BorderRadius.circular(10.0.r),
              ),
              child: Image(
                height: 30.h,
                width: 30.w,
                image: const AssetImage('images/rightButton.jpg'),
              ),
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          Container(
            height: 47.h,
            width: 252.w,
            decoration: BoxDecoration(
              color: app_color,
              borderRadius: BorderRadius.circular(10.0.r),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Create New Trip',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
