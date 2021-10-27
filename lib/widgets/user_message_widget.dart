import 'package:flutter/material.dart';
import 'package:fs03/widgets/avatar_message_widget.dart';
import 'package:fs03/widgets/message_widget.dart';

class UserMessageWidget extends StatelessWidget {
  const UserMessageWidget({
    this.height = 60,
    required this.avatar,
    this.numberMessage = 0,
    required this.name,
    this.message = '',
    required this.time,
    this.fontSizeName = 17,
    this.fontSizeTime = 13,
    Key? key,
  }) : super(key: key);

  final double height;
  final ImageProvider<Object> avatar;
  final int numberMessage;
  final String name;
  final String message;
  final String time;
  final double fontSizeName;
  final double fontSizeTime;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height + 22,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 1,
            child: AvatarMessageWidget(
              avatar: avatar,
              numberMessage: numberMessage,
              radiusAvatar: height / 2,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 4,
            child: MessageWidget(
              name: name,
              message: message,
              time: time,
              fontSize: fontSizeName,
              fontSizeTime: fontSizeTime,
            ),
          ),
        ],
      ),
    );
  }
}
