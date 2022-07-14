import 'package:flutter/material.dart';

import '../constants.dart';

class DriverContainer extends StatelessWidget {
  final IconData icon;
  final String text;
  const DriverContainer({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: app_color, borderRadius: BorderRadius.circular(50.0)),
            child: Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 32,
          width: 160,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(7.0)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
