import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Amount extends StatelessWidget {
  final String text;
  final double vertical;
  final double horizontal;
  const Amount(
      {Key? key,
      required this.text,
      required this.vertical,
      required this.horizontal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.w, right: 21.w, top: 5.h, bottom: 5.h),
      child: TextFormField(
          keyboardType:
              text == 'Amount' ? TextInputType.number : TextInputType.text,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: vertical.h, horizontal: horizontal.w),
            label: text == 'Amount'
                ? Text(text)
                : Center(
                    child: Text(text),
                  ),
            labelStyle: TextStyle(
              fontWeight:
                  text == 'Amount' ? FontWeight.bold : FontWeight.normal,
              color: text == 'Amount' ? Colors.black87 : Colors.grey.shade400,
              fontSize: text == 'Amount' ? 18.sp : 15.sp,
            ),
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.0.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.0.r),
              borderSide: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 2.0.w,
              ),
            ),
          )),
      // Container(
      //   padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
      //   decoration: BoxDecoration(
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.grey.withOpacity(0.3), //New
      //         blurRadius: 5.0.r,
      //       )
      //     ],
      //     color: Colors.white,
      //     borderRadius: BorderRadius.circular(7.0.r),
      //   ),
      //   child: Padding(
      //     padding: EdgeInsets.symmetric(horizontal: 10.0.w),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Text(
      //           'Amount',
      //           style: TextStyle(
      //             fontSize: 20.sp,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //         Text(
      //           '250.000',
      //           style: TextStyle(
      //             fontSize: 20.sp,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
