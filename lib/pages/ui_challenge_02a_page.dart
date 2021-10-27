import 'package:flutter/material.dart';
import 'package:fs03/services/generate_widget.dart';

class UIChallenge02aPage extends StatelessWidget {
  const UIChallenge02aPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          ...GenerateWidget.create(numberColumn: 4),
        ],
      ),
    );
  }
}
