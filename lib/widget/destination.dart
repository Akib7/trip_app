import 'package:flutter/material.dart';

import '../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DestinationBar extends StatelessWidget {
  final String place;
  final IconData icon;
  const DestinationBar({Key? key, required this.place, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 17.49.w, right: 19.93.h),
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
              const Text('From'),
              Text(
                place,
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
