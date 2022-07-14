import 'package:flutter/material.dart';
import 'package:trip_app/constants.dart';

import 'widget/destination.dart';

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
        child: Column(
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
                icon: Icons.audio_file,
                place: 'Istanbul, Turkey',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
