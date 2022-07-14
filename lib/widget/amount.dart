import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Amount extends StatelessWidget {
  const Amount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 5.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), //New
              blurRadius: 5.0.r,
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(7.0.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Amount',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '250.000',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
