import 'package:flutter/material.dart';
import 'package:fs03/values/app_color.dart';

enum Status {
  online,
  offline,
  hasMessage,
  private,
}

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    Key? key,
    this.radius = 10.0,
    this.width = 2.0,
    required this.status,
    this.numberMessage = 0,
  }) : super(key: key);

  final double radius;
  final double width;
  final Status status;
  final int numberMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: radius * 2,
        width: radius * 2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: width,
            color: Colors.white,
          ),
          color: status == Status.online
              ? AppColor.green
              : status == Status.offline
                  ? Colors.grey
                  : Colors.red,
          gradient: status == Status.hasMessage
              ? const LinearGradient(
                  colors: AppColor.linear,
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                )
              : null,
        ),
        child: status == Status.hasMessage
            ? Center(
                child: Text(
                  '$numberMessage',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            : Container());
  }
}
