import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip_app/constants.dart';
import 'package:trip_app/widget/amount.dart';

import 'widget/destination.dart';
import 'widget/driverContainer.dart';
import 'widget/last_buttons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

TextEditingController hourController = TextEditingController();
TextEditingController minuteController = TextEditingController();

class _MyHomePageState extends State<MyHomePage> {
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime now = DateTime.now();

  showDialog() {
    Get.defaultDialog(
      title: 'Change Date and Time',
      backgroundColor: Colors.white,
      titleStyle: const TextStyle(color: Colors.black),
      textConfirm: "Save",
      confirmTextColor: Colors.white,
      onConfirm: () {
        Get.back();
      },
      // textCancel: "Cancel",
      // cancelTextColor: Colors.white,
      // confirmTextColor: Colors.white,
      buttonColor: app_color,
      barrierDismissible: false,

      content: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.grey.shade300,
            height: 200.h,
            width: MediaQuery.of(context).size.width.w,
            child: SizedBox(
              height: MediaQuery.of(context).size.height.h,
              width: MediaQuery.of(context).size.width.w,
              child: CupertinoDatePicker(
                  initialDateTime: now,
                  onDateTimeChanged: (dateTime) {
                    print(dateTime);
                    setState(() {
                      now = dateTime;
                    });
                  }),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var formattedDate = DateFormat('dd-MMM-yyyy').format(now);
    var formattedTime = DateFormat.jm().format(now);
    var formattedDay = DateFormat('EEE').format(now);
    var properDateAndTime = ('$formattedDay, $formattedDate $formattedTime');
    // print(formattedDay);
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: const [
            LastButtons(),
          ],
        ),
      ),
      appBar: AppBar(
        // Colors.grey.withOpacity(0.3),
        elevation: 0.7,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Create New Trip',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'AP35 AA 7711',
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: app_color,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: app_color,
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                    textStyle: TextStyle(fontSize: 15.sp),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0.r)),
                    minimumSize: Size(135.w, 1.h),
                  ),
                  child: const Text('Change'),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 17.w, right: 21.w, bottom: 0.5.h),
                          child: const DestinationBar(
                            icon: CupertinoIcons.multiply,
                            place: 'Istanbul, Turkey',
                            text: 'Going From',
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 17.w, right: 21.w, bottom: 6.h),
                          child: const DestinationBar(
                            icon: CupertinoIcons.placemark,
                            place: 'Tokyo, Japan',
                            text: 'Going To',
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right: 40.w,
                      top: 30.h,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 60.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            color: app_color,
                            borderRadius: BorderRadius.circular(20.0.r),
                          ),
                          child: Image(
                            height: 10.h,
                            width: 10.w,
                            image: const AssetImage('images/up_down.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 17.w, right: 21.w, top: 2.5.h, bottom: 2.5.h),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3), //New
                          blurRadius: 5.0,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7.0.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        DriverContainer(
                          text: 'Sample Driver, T',
                          imageType: AssetImage('images/driver.jpg'),
                        ),
                        DriverContainer(
                          text: 'Sample Cleaner, T',
                          imageType: AssetImage('images/cleaner.jpg'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 17.w, right: 21.w, top: 8.5.h, bottom: 2.5.h),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8.0.h),
                              child: Text(
                                'Trip Date & Time',
                                style: TextStyle(fontSize: 16.sp),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10.0.h),
                              child: Center(
                                child: Text(
                                  properDateAndTime,
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(top: 8.0.h, left: 10.0.w),
                              child: Container(
                                height: 37.h,
                                width: 87.w,
                                decoration: BoxDecoration(
                                  color: app_color,
                                  borderRadius: BorderRadius.circular(7.0.r),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    showDialog();
                                  },
                                  child: Text(
                                    'Change Date',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Amount(
                  text: 'Amount',
                  horizontal: 12.0,
                  vertical: 15.0,
                ),
                const Amount(
                  text: 'Notepad',
                  horizontal: 12.0,
                  vertical: 28.0,
                ),
                // Padding(
                //   padding: EdgeInsets.only(
                //       left: 17.w, right: 21.w, top: 2.5.h, bottom: 2.5.h),
                //   child: Container(
                //     padding:
                //         EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                //     decoration: BoxDecoration(
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.grey.withOpacity(0.3), //New
                //           blurRadius: 5.0.r,
                //         )
                //       ],
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(7.0.r),
                //     ),
                //     child: Padding(
                //       padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           Text(
                //             'This is For Some Notes Writting Related to\nTrip Details or Activities or Other Tasks',
                //             style: TextStyle(
                //               fontSize: 15.sp,
                //               color: Colors.grey.shade400,
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
