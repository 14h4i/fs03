import 'package:flutter/material.dart';
import 'package:fs03/values/app_routes.dart';

class Session01Page extends StatelessWidget {
  const Session01Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView(
        children: [
          TextButton(
            child: const Text('UI Challenge 01'),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.ui1);
            },
          ),
          TextButton(
            child: const Text('UI Challenge 02'),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.ui2);
            },
          ),
        ],
      ),
    );
  }
}
