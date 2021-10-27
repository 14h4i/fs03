import 'package:flutter/material.dart';
import 'package:fs03/widgets/avatar_online_widget.dart';
import 'package:fs03/widgets/status_widget.dart';

class UserOnlineWidget extends StatelessWidget {
  const UserOnlineWidget({
    this.radiusAvatar = 25,
    this.fontSizeTitle = 11,
    required this.avatar,
    required this.title,
    Key? key,
  }) : super(key: key);

  final double radiusAvatar;
  final double fontSizeTitle;
  final String title;
  final ImageProvider<Object> avatar;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: radiusAvatar * 2 + radiusAvatar / 3,
          child: Stack(
            children: [
              AvatarOnlineWidget(radius: radiusAvatar, image: avatar),
              Positioned(
                right: radiusAvatar / 3 / 2,
                bottom: 0,
                child: StatusWidget(
                  status: Status.online,
                  radius: radiusAvatar / 3,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.only(right: radiusAvatar / 3 / 2),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSizeTitle,
            ),
          ),
        ),
      ],
    );
  }
}
