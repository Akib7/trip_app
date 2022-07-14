import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_app/constants.dart';
import 'package:trip_app/widget/amount.dart';

import 'widget/destination.dart';
import 'widget/driverContainer.dart';
import 'widget/last_buttons.dart';

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

  @override
  Widget build(BuildContext context) {
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
                const SizedBox(
                  height: 22,
                ),
                const Text(
                  'AP35 AA 77111',
                  style: TextStyle(
                    fontSize: 22,
                    color: app_color,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: app_color,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    textStyle: const TextStyle(fontSize: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0)),
                    minimumSize: const Size(160, 10),
                  ),
                  child: const Text('Change'),
                ),
                const SizedBox(
                  height: 22,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 5),
                  child: DestinationBar(
                    icon: CupertinoIcons.placemark,
                    place: 'Istanbul, Turkey',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 5),
                  child: DestinationBar(
                    icon: CupertinoIcons.placemark,
                    place: 'Tokyo, Japan',
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 22),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3), //New
                            blurRadius: 5.0,
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7.0)),
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
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3), //New
                          blurRadius: 5.0,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Select Time & Date'),
                            Text(
                              'Plan Your Trip',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 25,
                          height: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: app_color,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 10),
                                  textStyle: const TextStyle(fontSize: 15),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7.0)),
                                  minimumSize: const Size(190, 15),
                                ),
                                child: const Text(
                                  'Select Date',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                _selectTime(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: app_color,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                                textStyle: const TextStyle(fontSize: 15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7.0)),
                                minimumSize: const Size(190, 15),
                              ),
                              child: const Text(
                                "Choose Time",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text("${selectedTime.hour}:${selectedTime.minute}"),

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
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3), //New
                            blurRadius: 5.0,
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'This is For Some Notes Writting Related to\nTrip Details or Activities or Other Tasks',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const LastButtons(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
