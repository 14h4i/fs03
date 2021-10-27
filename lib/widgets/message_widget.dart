import 'package:flutter/material.dart';
import 'package:fs03/values/app_color.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    required this.name,
    required this.time,
    this.message = '',
    this.fontSize = 15,
    this.fontSizeTime = 12,
    Key? key,
  }) : super(key: key);

  final String name;
  final String time;
  final String message;
  final double fontSize;
  final double fontSizeTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: fontSize,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                time,
                style: TextStyle(
                  color: AppColor.grey,
                  fontSize: fontSizeTime,
                ),
              ),
            ),
          ],
        ),
        Text(
          message,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(width: 0.5, color: Colors.black)),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
