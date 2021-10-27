import 'package:flutter/material.dart';

class AvatarOnlineWidget extends StatelessWidget {
  const AvatarOnlineWidget({
    this.radius = 25,
    required this.image,
    Key? key,
  }) : super(key: key);

  final double radius;
  final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2,
      width: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: image,
        ),
      ),
    );
  }
}
