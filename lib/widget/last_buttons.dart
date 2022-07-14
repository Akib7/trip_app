import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class LastButtons extends StatelessWidget {
  const LastButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 55,
              width: 80,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 86, 86, 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Icon(
                CupertinoIcons.arrow_left_square,
                color: Colors.white,
                size: 30.0,
              ),
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: app_color,
              padding: const EdgeInsets.symmetric(horizontal: 82, vertical: 18),
              textStyle: const TextStyle(fontSize: 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              minimumSize: const Size(160, 10),
            ),
            child: const Text(
              'Create New Trip',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
