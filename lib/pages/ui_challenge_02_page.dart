import 'package:flutter/material.dart';
import 'package:fs03/values/app_routes.dart';

class UIChallenge02Page extends StatelessWidget {
  const UIChallenge02Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Challenge 02'),
      ),
      body: ListView(
        children: [
          TextButton(
            child: const Text('UI Challenge 02 - a'),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.ui2a);
            },
          ),
          TextButton(
            child: const Text('UI Challenge 02 - b'),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.ui2b);
            },
          ),
          TextButton(
            child: const Text('UI Challenge 02 - c'),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.ui2c);
            },
          ),
          TextButton(
            child: const Text('UI Challenge 02 - d'),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.ui2d);
            },
          ),
        ],
      ),
    );
  }
}
