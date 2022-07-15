import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.input,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }

  void datePicker() {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext builder) {
          return CupertinoPopupSurface(
            isSurfacePainted: true,
            child: Container(
              alignment: Alignment.center,
              color: Colors.grey.shade300,
              height: 200.h,
              child: SizedBox(
                height: 200.h,
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
          );
        });
  }

  // void datePicker() {
  //    showCupertinoModalPopup(
  //     context: context,
  //     builder: (BuildContext builder) {
  //      child: CupertinoPopupSurface(
  //       isSurfacePainted: true,
  //       child: Container(
  //           alignment: Alignment.center,
  //           width: MediaQuery.of(context).size.width,
  //           height: MediaQuery.of(context).copyWith().size.height * 0.35,
  //           child: const Material(child: Text("This is a popup surface"))),
  //        );
  //     }
  //    );

  // return CupertinoPopupSurface(
  //   child: Container(
  //     alignment: Alignment.center,
  //     color: Colors.grey.shade300,
  //     height: 200.h,
  //     child: SizedBox(
  //       height: 200.h,
  //       child: CupertinoDatePicker(
  //           initialDateTime: now,
  //           onDateTimeChanged: (dateTime) {
  //             print(dateTime);
  //             setState(() {
  //               now = dateTime;
  //             });
  //           }),
  //     ),
  //   ),
  // );
  // }

  @override
  Widget build(BuildContext context) {
    var formattedDate = DateFormat('dd-MMM-yyyy').format(now);
    var formattedTime = DateFormat.jm().format(now);
    var properDateAndTime = ('$formattedDate $formattedTime');
    // print(properDateAndTime);
    return Scaffold(
      appBar: AppBar(
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
                  height: 22.h,
                ),
                Text(
                  'AP35 AA 77111',
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
                    textStyle: const TextStyle(fontSize: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0.r)),
                    minimumSize: Size(160.w, 10.h),
                  ),
                  child: const Text('Change'),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.w, vertical: 5.h),
                  child: const DestinationBar(
                    icon: CupertinoIcons.multiply,
                    place: 'Istanbul, Turkey',
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.w, vertical: 5.h),
                  child: const DestinationBar(
                    icon: CupertinoIcons.placemark,
                    place: 'Tokyo, Japan',
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.w, vertical: 5.h),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 22.h),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3), //New
                            blurRadius: 5.0,
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7.0.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        DriverContainer(
                          icon: Icons.drive_eta,
                          text: 'Sample Driver, T',
                        ),
                        DriverContainer(
                          icon: Icons.cleaning_services,
                          text: 'Sample Cleaner, T',
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.w, vertical: 5.h),
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
                                  fontSize: 18.sp, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 25.w,
                          height: 40.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 36.h,
                              width: 178.w,
                              color: Colors.grey.shade300,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  properDateAndTime,
                                  style: TextStyle(fontSize: 22.sp),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                datePicker();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: app_color,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 10.h),
                                textStyle: TextStyle(fontSize: 15.sp),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7.0.r),
                                ),
                                minimumSize: Size(150.w, 15.h),
                              ),
                              child: Text(
                                'Change Date & Time',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // ElevatedButton(
                            //   onPressed: () {
                            //     _selectTime(context);
                            //   },
                            //   style: ElevatedButton.styleFrom(
                            //     primary: app_color,
                            //     padding: EdgeInsets.symmetric(
                            //         horizontal: 30.w, vertical: 10.h),
                            //     textStyle: TextStyle(fontSize: 15.sp),
                            //     shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(7.0.r),
                            //     ),
                            //     minimumSize: Size(150.w, 15.h),
                            //   ),
                            //   child: Text(
                            //     "Choose Time",
                            //     style: TextStyle(
                            //       fontSize: 17.sp,
                            //       fontWeight: FontWeight.bold,
                            //     ),
                            //   ),
                            // ),
                            // Text("${selectedTime.hour}:${selectedTime.minute}"),

                            // Row(
                            //   children: const [
                            //     SizedBox(
                            //       width: 55,
                            //       height: 40,
                            //       child: TextField(
                            //         keyboardType: TextInputType.number,
                            //         decoration: InputDecoration(
                            //           border: OutlineInputBorder(),
                            //         ),
                            //       ),
                            //     ),
                            //     SizedBox(
                            //       width: 5,
                            //     ),
                            //     Text(
                            //       ":",
                            //       style: TextStyle(
                            //         fontSize: 20,
                            //         fontWeight: FontWeight.bold,
                            //       ),
                            //     ),
                            //     SizedBox(
                            //       width: 5,
                            //     ),
                            //     SizedBox(
                            //       width: 55,
                            //       height: 40,
                            //       child: TextField(
                            //         keyboardType: TextInputType.number,
                            //         decoration: InputDecoration(
                            //           border: OutlineInputBorder(),
                            //         ),
                            //       ),
                            //     ),
                            //     SizedBox(
                            //       width: 15,
                            //     ),

                            //   ],
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Amount(),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.w, vertical: 5.h),
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
                const LastButtons(),
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
