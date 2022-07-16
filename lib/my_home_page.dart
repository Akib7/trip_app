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
      onConfirm: () {
        Get.back();
      },
      // textCancel: "Cancel",
      // cancelTextColor: Colors.white,
      // confirmTextColor: Colors.white,
      buttonColor: app_color,
      barrierDismissible: false,
      radius: 20.r,
      content: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.grey.shade300,
            height: 200.h,
            width: MediaQuery.of(context).size.width.w,
            child: SizedBox(
              height: MediaQuery.of(context).size.height.h,
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
    var properDateAndTime = ('$formattedDate $formattedTime');
    // print(properDateAndTime);
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
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                    textStyle: TextStyle(fontSize: 15.sp),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0.r)),
                    minimumSize: Size(160.w, 5.h),
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
                          child: const Icon(
                            CupertinoIcons.arrow_up_arrow_down,
                            color: Colors.white,
                            size: 30.0,
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
                          icon: Icons.drive_eta,
                          text: 'Sample Driver, T',
                          imageType: AssetImage('images/driver.jpg'),
                        ),
                        DriverContainer(
                          icon: Icons.cleaning_services,
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
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
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
                            const Text('Select Date & Time'),
                            Text(
                              'Trip Date',
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 25.w,
                          height: 50.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10.0.h),
                              child: Container(
                                height: 36.h,
                                width: 155.w,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(7.0.r),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.5),
                                  child: Center(
                                    child: Text(
                                      properDateAndTime,
                                      style: TextStyle(fontSize: 18.sp),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                showDialog();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: app_color,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 14.w, vertical: 8.h),
                                textStyle: TextStyle(fontSize: 12.sp),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7.0.r),
                                ),
                                minimumSize: Size(130.w, 1.h),
                              ),
                              child: Text(
                                'Change Date & Time',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Amount(),
                Padding(
                  padding: EdgeInsets.only(
                      left: 17.w, right: 21.w, top: 2.5.h, bottom: 2.5.h),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'This is For Some Notes Writting Related to\nTrip Details or Activities or Other Tasks',
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
