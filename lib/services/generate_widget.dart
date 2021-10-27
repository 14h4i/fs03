import 'package:flutter/material.dart';

class GenerateWidget {
  static Widget widget({flex = 1}) =>
      Expanded(flex: flex, child: Container(color: Colors.blue.shade200));

  static List<Widget> create({int numberRow = 0, int numberColumn = 0}) {
    List<Widget> listWidget = [];
    if (numberRow != 0 && numberColumn == 0) {
      for (int i = 0; i < numberRow; i++) {
        listWidget.add(widget());
        if (i != numberRow - 1) {
          listWidget.add(const SizedBox(height: 10));
        }
      }
    } else if (numberRow == 0 && numberColumn != 0) {
      for (int i = 0; i < numberColumn; i++) {
        listWidget.add(widget());
        if (i != numberColumn - 1) {
          listWidget.add(const SizedBox(width: 10));
        }
      }
    } else if (numberRow != 0 && numberColumn != 0) {
      List<Widget> tempList = [];
      for (int j = 0; j < numberRow; j++) {
        tempList.add(widget());
        if (j != numberRow - 1) {
          tempList.add(const SizedBox(height: 10));
        }
      }
      Widget column = Expanded(child: Column(children: [...tempList]));
      for (int i = 0; i < numberColumn; i++) {
        listWidget.add(column);
        if (i != numberColumn - 1) {
          listWidget.add(const SizedBox(width: 10));
        }
      }
    }
    return listWidget;
  }
}
