import 'package:flutter/material.dart';
import 'package:fs03/services/generate_widget.dart';

class UIChallenge02dPage extends StatelessWidget {
  const UIChallenge02dPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          GenerateWidget.widget(flex: 4),
          const SizedBox(height: 10),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  ...GenerateWidget.create(numberColumn: 2),
                ],
              )),
        ],
      ),
    );
  }
}
