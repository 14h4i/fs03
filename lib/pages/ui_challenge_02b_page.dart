import 'package:flutter/material.dart';
import 'package:fs03/services/generate_widget.dart';

class UIChallenge02bPage extends StatelessWidget {
  const UIChallenge02bPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ...GenerateWidget.create(numberRow: 6),
        ],
      ),
    );
  }
}
