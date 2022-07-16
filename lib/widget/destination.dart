import 'package:flutter/material.dart';

import '../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DestinationBar extends StatelessWidget {
  final String place;
  final IconData icon;
  final String text;
  const DestinationBar(
      {Key? key, required this.place, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5.w, right: 5.w),
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
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: app_color,
              size: 25.0,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 12.sp),
              ),
              Text(
                place,
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
