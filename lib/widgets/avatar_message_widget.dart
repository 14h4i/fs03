import 'package:flutter/material.dart';

import 'package:fs03/widgets/avatar_online_widget.dart';
import 'package:fs03/widgets/status_widget.dart';

class AvatarMessageWidget extends StatelessWidget {
  const AvatarMessageWidget({
    this.radiusAvatar = 25,
    required this.avatar,
    required this.numberMessage,
    Key? key,
  }) : super(key: key);

  final double radiusAvatar;

  final int numberMessage;
  final ImageProvider<Object> avatar;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: radiusAvatar * 2 + radiusAvatar / 3,
          child: numberMessage == 0
              ? Stack(
                  children: [
                    AvatarOnlineWidget(radius: radiusAvatar, image: avatar),
                  ],
                )
              : Stack(
                  children: [
                    AvatarOnlineWidget(radius: radiusAvatar, image: avatar),
                    Positioned(
                      right: radiusAvatar / 3 / 2,
                      bottom: 0,
                      child: StatusWidget(
                        status: Status.hasMessage,
                        numberMessage: numberMessage,
                        radius: radiusAvatar / 3,
                      ),
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
