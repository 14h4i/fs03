import 'package:flutter/material.dart';

class Session03Page extends StatelessWidget {
  const Session03Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Session 03'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Read json'),
          onPressed: () {},
        ),
      ),
    );
  }
}
