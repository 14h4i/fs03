import 'package:flutter/material.dart';
import 'package:fs03/services/generate_widget.dart';

class UIChallenge02cPage extends StatelessWidget {
  const UIChallenge02cPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Row(
          children: [
            ...GenerateWidget.create(numberRow: 8, numberColumn: 4),
          ],
        ),
      ),
    );
  }
}
