import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_app/constants.dart';

import 'widget/destination.dart';
import 'widget/driverContainer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              children: <Widget>[
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 32),
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
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
