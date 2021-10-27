import 'package:flutter/material.dart';
import 'package:fs03/values/app_color.dart';
import 'package:fs03/values/app_image.dart';
import 'package:fs03/widgets/user_message_widget.dart';

class Session02Page extends StatelessWidget {
  const Session02Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      appBar: AppBar(
        title: const Text('Session 02'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            UserMessageWidget(
              avatar: AssetImage(AppImage.user1),
              name: 'Hallie Sandoval',
              message: 'Hi Tina. How\'s your',
              time: '06:58PM',
              numberMessage: 3,
              fontSizeName: 17,
              fontSizeTime: 13,
              height: 60,
            ),
            UserMessageWidget(
              avatar: AssetImage(AppImage.user2),
              name: 'Ada Reyes',
              message: 'Sounds good to me!',
              time: '11:33PM',
              numberMessage: 0,
              fontSizeName: 17,
              fontSizeTime: 13,
              height: 60,
            ),
            UserMessageWidget(
              avatar: AssetImage(AppImage.user3),
              name: 'Dean Warren',
              message: 'What did you do over',
              time: '09:43PM',
              numberMessage: 1,
              fontSizeName: 17,
              fontSizeTime: 13,
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
